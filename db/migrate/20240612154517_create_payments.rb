class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.references :order, null: false, foreign_key: true
      t.float :amount
      t.string :method_payment
      t.string :status

      t.timestamps
    end
  end
end
