class Doctor < ApplicationRecord
  has_many :appointments, through: :doctor_appointments, dependent: :destroy
  has_many :doctor_appointments, dependent: :destroy 
end
