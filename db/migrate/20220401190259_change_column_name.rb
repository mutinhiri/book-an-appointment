class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :doctors, :integer, :experience
  end
end
