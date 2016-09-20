require 'rails_helper'

RSpec.feature "User view items on the homepage", type: :feature do
  scenario "they see items with the Items header" do

    visit root_path

    expect(page.status_code).to eq(200)
    expect(page).to have_css("h1", :text => "Items")
  end
end
