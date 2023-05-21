require 'rails_helper'

RSpec.describe PricingEngine do
  let!(:booking) do
    create(
      :booking,
      first_name: 'Bart',
      last_name: 'Simpson',
      animal_name: "Santa's Little Helper",
      animal_type: 'Dog',
      hours_requested: 5
    )
  end

  describe 'instant_methods' do
    context '#subtotal' do
      it 'should return a subtotal = base_charge + ((hours_requested - 1) * price)' do
        expect(booking.subtotal).to eq(60)
      end
    end
  end
end
