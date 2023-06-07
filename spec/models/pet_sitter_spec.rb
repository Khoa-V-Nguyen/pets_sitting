require 'rails_helper'

RSpec.describe PetSitter, type: :model do
  describe 'associations' do
    subject(:pet_sitter) { build(:pet_sitter) }

    it do
      is_expected.to belong_to(:user)
      is_expected.to belong_to(:sitter).class_name('User')
    end
  end
end
