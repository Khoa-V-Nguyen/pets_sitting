require 'rails_helper'

RSpec.describe 'admin/edit', type: :feature do
  let!(:booking) do
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

  before do
    visit edit_admin_booking_path(booking)
  end

  scenario 'As an admin I can edit bookings' do
    fill_in 'First name', with: 'Homer'
    fill_in 'Last name', with: 'Simpson'
    fill_in 'Animal name', with: "Santa's Little Helper"
    select 'Dog', from: 'Animal type'
    fill_in 'Hours requested', with: 8
    fill_in 'Date of service', with: Date.today

    click_button 'Update'

    expect(page).to have_text('Booking was successfully updated.')
    expect(page).to have_text('Homer')
    expect(page).to have_text('90')
  end

  scenario 'As an admin I can delete a booking' do
    click_button('Delete booking')

    expect(page).to have_text('Booking was successfully deleted')
    expect(page).to_not have_content('Bart')
  end
end
