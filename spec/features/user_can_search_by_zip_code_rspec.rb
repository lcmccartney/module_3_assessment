require 'rails_helper'

RSpec.feature "User search by zip code", type: :feature do
  scenario "they see items with the Items header" do

    visit root_path
    fill_in("search"), with: "80202"
    click_on "Search"

    expect(page.status_code).to eq(200)
    expect(current_path).to be("/search")
    # expect(page).to have_css("h1", :text => "Items")
  end
end

# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "17 Total Stores"
# And I should see exactly 15 results
# And I should see the long name, city, distance, phone number and store type for each of the 15 results
