require "rails_helper"

RSpec.feature "Users can create new forums" do
  scenario "with valid attributes" do
    visit "/"

    click_link "New Forum"

    fill_in "Title", with: "Rails Fails Forum"
    fill_in "Description", with: "A place to discuss any development mistakes"
    click_button "Create Forum"

    expect(page).to have_content "Forum has been created!"
  end
end
