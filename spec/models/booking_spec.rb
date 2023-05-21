require 'rails_helper'

RSpec.describe Booking, type: :model do
  subject(:booking) { build(:booking, hours_requested:, date_of_service:) }

  let(:hours_requested) { 4 }
  let(:date_of_service) { Date.tomorrow }

  describe 'ActiveRecord Validation' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:animal_name) }
    it { should validate_presence_of(:animal_type) }
  end

  describe 'Custom Validations' do
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

    describe '#date_of_service_check' do
      context 'when hours_request is between 2 and 8' do
        it 'should be valid' do
          expect(booking).to be_valid
        end
      end

      context 'when hours_request is NOT between 2 and 8' do
        let(:date_of_service) { Date.today }

        it 'should NOT be valid' do
          expect(booking).to_not be_valid
        end
      end
    end
  end
end
