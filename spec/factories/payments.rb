FactoryBot.define do
  factory :payment do
    order { nil }
    amount { 1.5 }
    method_payment { "MyString" }
    status { "MyString" }
  end
end
