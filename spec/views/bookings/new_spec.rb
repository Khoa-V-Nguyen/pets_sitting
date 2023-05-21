require 'rails_helper'

RSpec.describe 'bookings/new', type: :feature do

  scenario 'When I visit the new page I can create a booking' do
    visit new_booking_path

    fill_in 'First name', with: 'Bart'
    fill_in 'Last name', with: 'Simpson'
    fill_in 'Animal name', with: "Santa's Little Helper"
    select 'Dog', from: 'Animal type'
    fill_in 'Hours requested', with: 4
    fill_in 'Date of service', with: Date.today

    click_button 'Book'

    expect(page).to have_text('Booking was successfully created.')
  end

  scenario 'When I visit the new page and not filled out anything' do
    visit new_booking_path

    fill_in 'First name', with: ''
    fill_in 'Last name', with: ''
    fill_in 'Animal name', with: ''
    fill_in 'Hours requested', with: ''

    click_button 'Book'

    expect(page).to have_text(
      "First name can't be blank, " \
      "Last name can't be blank, " \
      "Animal name can't be blank, " \
      "Date of service can't be blank, " \
      'Hours requested must be between 2 and 8'
    )
  end
end
