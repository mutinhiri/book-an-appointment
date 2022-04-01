class CreateAppointment < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :location
      t.date :dateOfAppointment
      t.integer :user_id
      t.integer :doctor_id
      t.timestamps
    end
  end
end
