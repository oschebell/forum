require "rails_helper"

RSpec.feature "Users can view forums" do
  scenario "with the forum details" do
    forum = FactoryGirl.create(:forum, title: "Rails Fails Forum")

    visit "/"
    click_link "Rails Fails Forum"
    expect(page.current_url).to eq forum_url(forum)
  end
end
