class Appointment < ApplicationRecord
  belongs_to :user
  validates :location, presence: true
  validates :dateOfAppointment, presence: true
  validates :user_id, presence: true
  validates :doctor_id, presence: true
end