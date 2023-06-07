class Pet < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :sitter, class_name: 'PetSitter', optional: true

  validates :pet_name, presence: true
  validates :species, presence: true

  enum species: %w[Cat Dog]
end
