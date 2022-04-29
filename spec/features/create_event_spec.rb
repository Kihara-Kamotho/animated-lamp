require "rails_helper"

RSpec.feature "user can create events" do
  scenario "with valid attributes" do
    church = FactoryBot.create(:church, name: "Wonders")

    visit church_path(church)

    click_link "New Event"

    fill_in "Name", with: "Camp Date"
    fill_in "Date", with: 27/03/2022

    click_button "Create Event"
  end
end
