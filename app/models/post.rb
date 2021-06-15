# == Schema Information

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  # Validations
  validates :title, length: { in: 8..50 }
  validates :link, format: {
    with: %r{(https?://)?([\da-z.-]+\.[a-z.]{2,6}|[\d.]+)([/:?=&#_-]{1}[\da-z.-]+)*[/?]?},
    message: 'Invalid URL'
  }
end
