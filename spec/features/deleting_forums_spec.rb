require "rails_helper"

RSpec.feature "Users can delete forums" do
  scenario "successfully" do
    FactoryGirl.create(:forum, title: "Rails Fails")

    visit "/"
    click_link "Rails Fails"
    click_link "Delete Forum"

    expect(page).to have_content "Forum has been deleted."
    expect(page).to have_no_content "Rails Fails"
  end
end
