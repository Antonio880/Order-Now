class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.references :address, null: false, foreign_key: true
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
