class Appointment < ApplicationRecord
  belongs_to :user
  has_many :doctor_appointments
  has_many :doctors, through: :doctor_appointments
  validates :location, presence: true
  validates :dateOfAppointment, presence: true
  validates :user_id, presence: true
  validates :doctor_id, presence: true

end