FactoryGirl.define do
  factory :request_visitor, class: RequestVisitor do
    email "visitor.a@gmail.com"
    views [
      { url: "http://localhost:3000/", visited_at: Time.now },
      { url: "http://localhost:3000/products/1", visited_at: Time.now },
      { url: "http://localhost:3000/contact", visited_at: Time.now },
    ]
  end
end