require 'rails_helper'

describe 'As a visitor' do
  context 'they visit the homepage' do
    it 'displays a nav bar with links for HOME, ABOUT, OUR WORK, CONTACT' do
      visit '/'

      within('#nav') do
        expect(page).to have_link('Home')
        expect(page).to have_link('About')
        expect(page).to have_link('Our Work')
        expect(page).to have_link('Contact')
      end
    end
  end
end