class Api::V1::DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    render json: @doctors
  end

  def show
    @doctors = Doctor.find_by(id: params[:id])
    render json: @doctors
  end
end
