require "rails_helper"

RSpec.feature "user can edit event" do
  scenario "successfully update event" do
    event = FactoryBot.create(:event, name: "Stadium tour")

    visit "/"
    click_link "Events"

    #click_link "Join"
    visit event_path(event)

    click_button "Edit"

    fill_in "Name", with: "TPF auditions"
    fill_in "Details", with: "Lorem ipsum"

    click_button "Update Event"
  end
end
