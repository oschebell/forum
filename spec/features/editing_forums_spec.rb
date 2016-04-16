require "rails_helper"

RSpec.feature "Users can edit existing forums" do

    before do #Do this first!
      FactoryGirl.create(:forum, title: "Rails Fails Forum")

      visit "/"
      click_link "Rails Fails Forum"
      click_link "Edit Forum"
    end

    scenario "when providing valid attributes" do
    fill_in "Title", with: "Ruby Fails Forum"
    fill_in "Description", with: "A better forum about Ruby fails."
    click_button "Update Forum"

    expect(page).to have_content "Forum has been updated."
    expect(page).to have_content "Ruby Fails Forum"
  end

  scenario "when providing invalid attributes" do
  fill_in "Title", with: ""

  click_button "Update Forum"

  expect(page).to have_content "Forum has not been updated."
  end
end
