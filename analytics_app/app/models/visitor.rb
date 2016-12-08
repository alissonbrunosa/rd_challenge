class Visitor < ApplicationRecord
  has_many :views

  validates :email,
            presence: true


  def views_by_day
    views.group_by { |view| view.visited_at.to_date }
  end
end
