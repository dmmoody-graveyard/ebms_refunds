require 'rails_helper'

describe "the show group process" do
  it 'shows a list of groups' do
    group = FactoryGirl.create(:group)
    visit root_path
    expect(page).to have_content "Cardiac Science"
  end
end