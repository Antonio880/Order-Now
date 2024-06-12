FactoryBot.define do
  factory :order do
    user { nil }
    restaurant { nil }
    delivery_person { nil }
    address { nil }
    status { "MyString" }
    total_price { 1.5 }
  end
end
