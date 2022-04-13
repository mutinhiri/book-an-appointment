class Changelocationtocity < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :location, :city
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
