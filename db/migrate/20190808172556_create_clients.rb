class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.float :weight_in_kg
      t.float :height_in_m
      t.float :bmi
      t.timestamps
    end
  end
end
