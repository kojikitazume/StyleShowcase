class Review < ApplicationRecord
  belongs_to :stylist
  belongs_to :user

  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :content, presence: true
end
