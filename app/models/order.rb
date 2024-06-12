class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  belongs_to :delivery_person
  belongs_to :address
end
