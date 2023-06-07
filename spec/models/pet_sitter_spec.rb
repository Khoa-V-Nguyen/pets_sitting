require 'rails_helper'

RSpec.describe PetSitter, type: :model do
  describe 'validation' do
    it { should validate_presence_of :sitter_name }
    it { should validate_presence_of :contact_info }
  end

  describe 'associations' do
    subject(:pet_sitter) { build(:pet_sitter) }

    it do
      is_expected.to have_many(:pets)
      is_expected.to have_many(:owners).through(:pets)
    end
  end
end
