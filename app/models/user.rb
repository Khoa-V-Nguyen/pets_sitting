class User < ApplicationRecord
  has_many :pets
  has_many :pet_sitters
  has_many :sitters, through: :pet_sitters

  validates :username, presence: true
  validates :email, presence: true
end
