require 'rails_helper'

RSpec.describe 'admin/bookings/index', type: :feature do
  let!(:dog_booking) do
    create(
      :booking,
      first_name: 'Bart',
      last_name: 'Simpson',
      animal_name: "Santa's Little Helper",
      animal_type: 'Dog',
      hours_requested: 5,
      date_of_service: Date.today
    )
  end
  let!(:cat_booking) do
    create(
      :booking,
      first_name: 'Lisa',
      last_name: 'Simpson',
      animal_name: 'Snowball',
      animal_type: 'Cat',
      hours_requested: 5,
      date_of_service: Date.today
    )
  end

  describe 'As an Admin' do
    scenario 'When I visit the index page, I see all bookings and their info' do
      visit admin_bookings_path

      within("#id-#{dog_booking.id}") do
        expect(page).to have_text('Bart')
        expect(page).to have_text('Simpson')
        expect(page).to have_text("Santa's Little Helper")
        expect(page).to have_text('Dog')
        expect(page).to have_text('5')
        expect(page).to have_text(Date.today)
        expect(page).to have_text(dog_booking.subtotal)
      end

      within("#id-#{cat_booking.id}") do
        expect(page).to have_text('Lisa')
        expect(page).to have_text('Simpson')
        expect(page).to have_text('Snowball')
        expect(page).to have_text('Cat')
        expect(page).to have_text('5')
        expect(page).to have_text(Date.today)
        expect(page).to have_text(cat_booking.subtotal)
      end
    end
  end
end
