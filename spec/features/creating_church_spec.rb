require "rails_helper"

RSpec.feature "user can create new church" do
  scenario "with valid attributes" do

    visit "/"

    click_link "New Church"

    fill_in "Name", with: "Mukerenju"
    fill_in "Address", with: "0123-AB"
    fill_in "Vision", with: "To empower"
    fill_in "Email", with: "example@test.com"

    click_button "Create Church"
  end
end
