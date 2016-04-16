require "rails_helper"

RSpec.feature "Users can create new forums" do
  before do #Do this first
    visit "/"

    click_link "New Forum"
  end

  scenario "with valid attributes" do

    fill_in "Title", with: "Rails Fails Forum"
    fill_in "Description", with: "A place to discuss any development mistakes"
    click_button "Create Forum"

    expect(page).to have_content "Forum has been created!"
  end

  scenario "when providing invalid attributes" do

    click_button "Create Forum"

    expect(page).to have_content "Forum has not been created."
    expect(page).to have_content "Title can't be blank"
  end
end
