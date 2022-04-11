require "rails_helper"

RSpec.feature "user can view church details" do
  scenario "with valid attributes" do
    church = FactoryBot.create(:church, name: "Mukerenju")
    # visit church_path
    visit "/"
    # click name as link, goto show
    click_link "Mukerenju"

    expect(page.current_url).to eq church_url(church)
  end
end
