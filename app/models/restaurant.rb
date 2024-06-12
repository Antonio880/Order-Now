class Restaurant < ApplicationRecord
  belongs_to :address
  has_many :dishes
  has_many :orders
end
