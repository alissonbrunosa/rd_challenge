class View < ApplicationRecord

  validates :url,
            presence: true
  validates :visited_at,
            presence: true
end
