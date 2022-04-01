class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.all.map do |appointed|
      [appointed, {doctor: appointed.doctors.all.map(&:name)}]
    end
    render json: @appointment
  end

  private
  def appointment_params
    params.require(:appointment).permit(:location, :dateOfAppointment, :user_id, :doctor_id)
  end
    
end