require "rails_helper"

RSpec.feature "user can create departments" do


  scenario  "successfully" do
    church = FactoryBot.create(:church, name: "Fly over")
    # visit show page
    visit church_path(church)
    
    click_link "New Department"

    fill_in "Name", with: "KAMA"
    fill_in "Motto", with: "To unite"

    click_button "Create Department"
  end
end
