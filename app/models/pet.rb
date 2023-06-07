class Pet < ApplicationRecord
  belongs_to :user
  belongs_to :pet_sitter
  validates :pet_name, presence: true
  validates :species, presence: true
  
  enum species: %w[Cat Dog]
end
