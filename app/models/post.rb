# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  link       :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord

  belongs_to :user
  has_many :comments
  # Validations
  validates :title, length: { in: 8..50 }
  validates :link, format: {
    with: %r{(https?://)?([\da-z\.-]+\.[a-z\.]{2,6}|[\d\.]+)([/:?=&#_-]{1}[\da-z\.-]+)*[//?]?},
    message: 'Invalid URL'
  }

end
