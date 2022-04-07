class AddDoctorandAppointmentReferencetoDoctorAppointment < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctor_appointments, :doctor, foreign_key: true, null: false
    add_reference :doctor_appointments, :appointment, foreign_key: true, null: false
  end
end
