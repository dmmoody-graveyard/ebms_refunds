require 'rails_helper'

describe 'the add a new group process' do
  it 'adds a new group' do
    user = create(:user)
    visit root_path
    click_on 'Add a new group'
    fill_in "Group Number", :with => "0000800"
    fill_in 'Group Name', :with => 'City of Billings'
    click_on 'Create group'
    expect(page).to have_content "City of Billings"
  end
end