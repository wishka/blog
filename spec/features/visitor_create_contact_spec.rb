require "spec_helper"

feature "Contact Creation" do
scenario "allows access to contacts page" do
  visit '/contacts'
  expect(page).to have_contact 'Contact us'

end
end
