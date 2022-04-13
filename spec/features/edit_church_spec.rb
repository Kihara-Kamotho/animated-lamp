require "rails_helper"

RSpec.feature "user can edit church" do
  scenario "with valid attributes" do
    church = FactoryBot.create(:church, name: "Kalahari")
    # navigate to show page, then click edit
    visit "/"

    # click_link "Kalahari"
    visit church_path(church)
    click_link "Edit"

    fill_in "Name", with: "Mukerenju"
    fill_in "Address", with: "098-DF"
    fill_in "Vision", with: "To unite"

    click_button "Update Church"
  end
end
