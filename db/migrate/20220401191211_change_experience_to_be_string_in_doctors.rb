class ChangeExperienceToBeStringInDoctors < ActiveRecord::Migration[7.0]
  def change
    change_column :doctors, :experience, :integer

  end
end
