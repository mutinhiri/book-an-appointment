class Doctor < ApplicationRecord
  belongs_to :user
  has_many :doctor_appointments
  has_many :appointments through: :doctor_appointments
end
