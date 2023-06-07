require 'rails_helper'

RSpec.describe 'users/:id', type: :feature do
  describe 'As a user, when I visit my show page' do
    let(:user) { create(:user) }
    let(:user2) { create(:user) }
    let(:sitter) { create(:pet_sitter, sitter_name: user2.username) }

    let!(:pet) { create(:pet, owner: user, sitter:) }

    before do
      visit user_path(user)
    end

    scenario 'I should see' do
      expect(page).to have_content(user.username)
      expect(page).to have_content(pet.pet_name)
    end
  end
end
