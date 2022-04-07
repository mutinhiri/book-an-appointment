class AddDoctorandAppointmentReferencetoDoctorAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctor_appointments, :doctors, foreign_key: true, null: false
    add_reference :doctor_appointments, :appointments, foreign_key: true, null: false
  end
end
