FactoryGirl.define do
  factory :product, class: Product do 
    image Faker::Placeholdit.image("1000x500", 'jpg')
    name Faker::Commerce.product_name
    price Faker::Commerce.price
    code Faker::Number.number(10).to_s
    description Faker::Lorem.sentence(4)
  end
end