require "spec_helper"

feature "Contact Creation" do
scenario "allows access to contacts page" do
  visit '/contacts'
  expect(page).to have_contact I18n.t ('contact.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    click_button 'Send message'

    expect(page).to have_content 'Thanks!'
  end
end
