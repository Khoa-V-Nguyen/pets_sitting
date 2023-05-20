require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject(:booking) { build(:booking) }

  describe 'ActiveRecord Validation' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:animal_name) }
    it { should validate_presence_of(:animal_type) }
  end

  describe 'Custom Validations' do
    let(:hours_requested) { 4 }
    let(:booking) { build(:booking, hours_requested:) }

    describe '#valid_hours_requested' do
      context 'when hours_request is between 2 and 8' do
        it 'should be valid' do
          expect(booking).to be_valid
        end
      end

      context 'when hours_request is NOT between 2 and 8' do
        let(:hours_requested) { 0 }

        it 'should NOT be valid' do
          expect(booking).to_not be_valid
        end
      end
    end
  end
end
