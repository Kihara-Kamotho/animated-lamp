require "rails_helper"

RSpec.feature "user can view department details" do
  scenario "successfully" do
    # render all departments to a church
    church = FactoryBot.create(:church, name: "Fly over")
    FactoryBot.create(:department, church: church, name: "Finance", motto: "To account")
    # church#show
    visit church_url(church)
    # in church#show, render departments
    expect(page).to have_content "To account" 
  end
end
