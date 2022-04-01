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
    doctor = Doctor.new(params.permit(:name, :dscription, :price, :image))
    if doctor.save
      render json: doctor, status: :created
    else 
      render json: {error: }

end
