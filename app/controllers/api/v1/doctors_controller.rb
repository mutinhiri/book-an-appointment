class Api::V1::DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctors = Doctor.find_by(id: params[:id])
    render json: @doctors
  end

  def create
    doctor = Doctor.new(params.permit(:name, :image, :speciality, :bio, :experience))
    if doctor.save
      render json: doctor, status: :created
    else 
      render json: {error: doctor.errors, user: doctor }, status: :error
    end
  end

  def destroy
  end

end
