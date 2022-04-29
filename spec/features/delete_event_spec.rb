require "rails_helper"

RSpec.feature "user can delete event" do
  event = FactoryBot.create(:event, name: "Wins")
  scenario "successfully" do
    visit "/"

    click_link "Events"

    visit event_path(event)

    click_button "Delete"

    expect(page).to have_content "Event deleted"
  end
end
