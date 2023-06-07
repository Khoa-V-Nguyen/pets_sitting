class PetSitter < ApplicationRecord
  validates :sitter_name, presence: true
  validates :contact_info, presence: true

  has_many :pets, foreign_key: :sitter_id, inverse_of: :sitter
  has_many :owners, through: :pets, source: :owner
end
