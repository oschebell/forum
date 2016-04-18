require "rails_helper"

RSpec.feature "Users can edit existing topics" do
  let(:forum) { FactoryGirl.create(:forum) }
  let(:topic){ FactoryGirl.create(:topic, forum: forum) }

  before do #do this first
    visit forum_topic_path(forum, topic)
    click_link "Edit Topic"
  end

  scenario "with valid attributes" do
    fill_in "Subject", with: "FactoryGirl is my kinda girl!"
    click_button "Update Topic"

    expect(page).to have_content "Topic has been updated."
    expect(page).to have_content "FactoryGirl is my kinda girl!"
  end
end
