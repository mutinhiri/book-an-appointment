class RemovedoctorIdandappointmentIdfromdoctorappointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :doctor_appointments, :doctor_id, :integer
    remove_column :doctor_appointments, :appointment_id, :integer

  end
end
