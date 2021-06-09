class User < ApplicationRecord

  #Validates
  validates :username, presence: true, uniqueness: true
  validates :pwd, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validate :check_email

  private
  def check_email
    if self.email =~ /^([\w\.\-_]+)?\w+@[\w-_]+(\.\w+){1,}$/
      self.errors.add(:email, 'Invalid email, please check')
    end
  end
end
