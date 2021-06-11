# == Schema Information

class User < ApplicationRecord
  has_many :posts
  has_many :comments
  # Validates
  validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :pwd, presence: true, length: { in: 8..12 }, format: {
    with: /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\W)/,
    message: 'Password require at least 1 uppercase character, 1 lowercase character, 1 special character and 1 digit'
  }
  validates :email, presence: true, uniqueness: true, format: {
    with: /[a-z0-9]+[_a-z0-9.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/,
    message: 'Invalid email, please check'
  }
end
