require "rails_helper"

RSpec.feature "can delete church successfully" do
  scenario "successfully" do
    church = FactoryBot.create(:church, name: "Cameroon")
    visit "/"
    # visit show page, click delete
    click_link "Cameroon"

    click_button "Delete"

    # expect(page).to have_content "Church deleted"
    # expect(page.current_url).to eq churches_path
  end
end
