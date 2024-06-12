FactoryBot.define do
  factory :address do
    user { nil }
    street { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip_code { "MyString" }
  end
end
