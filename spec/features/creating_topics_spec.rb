require "rails_helper"

RSpec.feature "Users can create new topics" do
  let(:user){FactoryGirl.create(:user)}
  before do #do this first
    forum = FactoryGirl.create(:forum, title: "Rails Fails")

    visit forum_path(forum)
    click_link "New Topic"
end


  scenario "with valid attributes" do
    fill_in "Subject", with: "RSpec woes"
    fill_in "Text", with: "I've got the RSpec blues."
    click_button "Create Topic"

    expect(page).to have_content "Topic has been created."
    expect(page).to have_content "RSpec woes"
    expect(page).to have_content "I've got the RSpec blues."
      within ("#topics") do
        expect(page).to have_content "Author: #{user.email}"
      end
    end
end
