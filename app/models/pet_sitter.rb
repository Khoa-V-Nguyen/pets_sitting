class PetSitter < ApplicationRecord
  belongs_to :user
  belongs_to :sitter, class_name: 'User'
  has_many :pets
end
