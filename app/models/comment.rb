# == Schema Information

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :comment, length: { maximum: 500 }
end
