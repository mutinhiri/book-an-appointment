class AddUserReferencetoAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :user, foreign_key: true
  end
end
