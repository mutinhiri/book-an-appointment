class RemovedoctorIdandappointmentIdfromdoctorappointments < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctor_appointments, :doctors_id, :integer
    remove_column :doctor_appointments, :appointments_id, :integer
  end
end
