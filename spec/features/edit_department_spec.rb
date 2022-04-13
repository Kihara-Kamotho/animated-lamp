require "rails_helper"

RSpec.feature "can edit department" do
  scenario "with valid attributes" do
    # visit department to edit
    church = FactoryBot.create(:church, name: "Kame")
    FactoryBot.create(:department, church: church, name: "Department two", motto: "To embrace")
    # church#show
    visit church_url(church)
    # visit department
    expect(page).to have_content "To embrace"

    click_link "Edit Department"

    # expect(page).to have_content "Department has been updated"    
  end
end
