# spec/factories/orders.rb
FactoryBot.define do
  factory :order do
    association :user
    association :payment
    association :restaurant
    association :delivery_person
    association :address
    status { 'pending' }
    total_price { 100.0 }
  end
end

# Outras fábricas (user, payment, restaurant, delivery_person, address) devem estar definidas corretamente