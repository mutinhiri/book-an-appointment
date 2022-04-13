class User < ApplicationRecord
  has_many :appointments
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 100 }
end
