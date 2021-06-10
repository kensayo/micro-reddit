# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  email      :string           not null
#  pwd        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

  # Validates
  validates :username, presence: true, uniqueness: true
  validates :pwd, presence: true, length: { in: 8..12 }, format: {
    with: /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\W)/,
    message: 'Password must be safe'
  }
  validates :email, presence: true, uniqueness: true, format: {
    with: /[a-z0-9]+[_a-z0-9\.-]*[a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})/,
    message: 'Invalid email, please check'
  }


end
