class Visitor < ApplicationRecord
  has_many :views


  def views_by_day
    views.group_by { |view| view.visited_at.to_date }
  end
end
