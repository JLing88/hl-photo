require 'rails_helper'

describe 'As a visitor' do
  context 'they click on Contact from the navbar' do
    it 'takes them to a form to fill out name, email, phone, and a message' do
      visit '/'

      within 'nav' do
        click_on 'Contact'
      end

      expect(current_path).to eq(contact_path)

      fill_in "First name", with: "Jesse Ling"
      fill_in "Last name", with: "Jesse Ling"
      fill_in "Email", with: "jesse.ling@gmail.com"
      fill_in "Tel", with: "303-333-3333"
      fill_in "Message", with: "Please call me!"

      click_on "Submit"

    end
  end
end