class User < ApplicationRecord
  has_many :appointments
  #before_save { self.email = email.downcase }
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 100 }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, uniqueness: { case_sensitive: false },
  #                  format: { with: VALID_EMAIL_REGEX }
  #has_secure_password
end
