FactoryBot.define do
  factory :dish do
    restaurant { nil }
    name { "MyString" }
    price { 1.5 }
  end
end
