class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  belong_to :restaurant

end
