class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.all.map do |appointed|
      [appointed, {doctor: appointed.doctors.all.map(&:name)}]
    end
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      DoctorAppointment.create(doctor_id: params[:doctor_id], appointment_id: params[:@appointment.id])
      render json: @appointment, status: :created
    else
      render json: @appointment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    render json: {status: 'success', message: 'Appointment deleted!'}
  end
  
  

  private
  def appointment_params
    params.require(:appointment).permit(:location, :dateOfAppointment, :user_id, :doctor_id)
  end
    
end