class CreateDoctor < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :image
      t.string :speciality
      t.string :bio
      t.integer :experience
      t.timestamps
    end
  end
end
