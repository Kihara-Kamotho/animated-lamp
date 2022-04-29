require "rails_helper"

RSpec.feature "user can view events" do
  scenario "successfully" do
    visit "/"

    click_link "Events"

    expect(page.current_url).to eq events_path
  end
end
