class RemoveuserIdanddoctorIdfromappointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :user_id
    remove_column :appointments, :doctor_id
  end
end
