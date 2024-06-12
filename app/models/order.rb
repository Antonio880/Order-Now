class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  belongs_to :restaurant
  belongs_to :delivery_person
  belongs_to :address

  validates :status, presence: true
  validates :total_price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end