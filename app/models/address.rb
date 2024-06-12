class Address < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one :restaurant
  
end
