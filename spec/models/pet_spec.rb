require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:pet_name) }
    it { should validate_presence_of(:species) }
  end

  describe 'associations' do
    subject(:pet) { build(:pet) }

    it do
      is_expected.to belong_to(:owner).class_name('User')
    end
  end
end
