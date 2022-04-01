class CreateDoctor < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :image
      t.string :specialty
      t.string :bio
      t.string :integer
      t.timestamps
    end
  end
end
