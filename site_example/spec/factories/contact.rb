FactoryGirl.define do
  factory :contact, class: Contact do
    name  Faker::Name.name
    phone Faker::PhoneNumber.phone_number
    email Faker::Internet.email
    message Faker::Lorem.sentence(5) 
  end
end