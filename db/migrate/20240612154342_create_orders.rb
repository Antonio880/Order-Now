class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.references :delivery_person, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.string :status
      t.float :total_price

      t.timestamps
    end
  end
end
