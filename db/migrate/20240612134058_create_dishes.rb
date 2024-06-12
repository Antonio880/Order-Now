class CreateDishes < ActiveRecord::Migration[7.1]
  def change
    create_table :dishes do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
