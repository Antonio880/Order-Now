class DeliveryPerson < ApplicationRecord
    
    has_many :orders
    has_many :addresses, through: :orders    
    validates :name, presence: true
    validates :phone, presence: true, uniqueness: true
    validates :vehicle_type, presence: true

end
