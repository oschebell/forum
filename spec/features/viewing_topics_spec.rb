require "rails_helper"

RSpec.feature "Users can view a forum's topics" do
  before do #do this first
    test_forum = FactoryGirl.create(:forum, title: "Rails Fails Forum") #I need to make a test forum first to add the topic to!

    FactoryGirl.create(:topic,forum: test_forum, subject: "RSpec Woes") #Now create the topic inside the test_forum

    visit "/" #visit root
  end

  scenario "for any forum" do
    click_link "Rails Fails Forum" #click the forum title link

    expect(page).to have_content "RSpec Woes" #should see the subject for the topic/
  end
end
