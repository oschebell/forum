require "rails_helper"

RSpec.feature "Users can create new topics" do
  before do #do this first
    forum = FactoryGirl.create(:forum, title: "Rails Fails")

    visit forum_path(forum)
    click_link "New Topic"
end


  scenario "with valid attributes" do
    fill_in "Subject", with: "RSpec woes"
    click_button "Create Topic"

    expect(page).to have_content "Topic has been created."
  end
end
