class CreateDeliveryPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :delivery_people do |t|
      t.string :name
      t.string :phone
      t.string :vehicle_type

      t.timestamps
    end
  end
end
