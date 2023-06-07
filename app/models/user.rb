class User < ApplicationRecord
  has_many :pets, foreign_key: 'owner_id', inverse_of: :owner

  has_many :pet_sitters, through: :pets, source: :owner

  validates :username, presence: true
  validates :email, presence: true
end
