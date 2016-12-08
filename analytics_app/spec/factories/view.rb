FactoryGirl.define do
  factory :view, class: View do
    url "http://localhost:3000/home"
    visited_at Time.now
  end
end