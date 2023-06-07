require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validation' do
    it { should validate_presence_of :username }
    it { should validate_presence_of :email }
  end

  describe 'associations' do
    subject(:user) { build(:user) }

    it do
      is_expected.to have_many(:pets)
      is_expected.to have_many(:pet_sitters).through(:pets)
    end
  end
end
