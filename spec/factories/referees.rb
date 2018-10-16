FactoryBot.define do
  factory :referee do
    first_name { "MyString" }
    last_name { "MyString" }
    description { "MyText" }
    birthday { "2018-10-16" }
    country { 1 }
  end
end
