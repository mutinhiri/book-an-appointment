class DoctorAppointment < ApplicationRecord
  belongs_to :appointment
  belongs_to :doctor
end
