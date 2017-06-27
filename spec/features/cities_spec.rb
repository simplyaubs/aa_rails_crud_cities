require 'spec_helper'

feature 'CRUD favorites cities' do
  scenario 'create a list of cities' do
    visit '/'
    fill_in "city", with: "Chicago"
    fill_in "state", with: "IL"
    fill_in "country", with: "USA"
    fill_in "zip", with: "11111"
    click_on 'Submit'
    expect(page).to have_content "Chicago, IL"
    expect(page).to have_content "USA"
    expect(page).to have_content "11111"
  end
end
