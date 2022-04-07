class Appointment < ApplicationRecord
  belongs_to :user
  has_many :doctor_appointments
  has_many :doctors, through: :doctor_appointments
  validates :city, presence: true
  validates :dateOfAppointment, presence: true
end
