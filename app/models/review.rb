class Review < ApplicationRecord
    validates :customer_name, presence: true
    validates :content, presence: true
  end
  