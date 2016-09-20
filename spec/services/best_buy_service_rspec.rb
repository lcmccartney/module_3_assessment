require 'rails_helper'

Rspec.describe BestBuyService do
  context "it can return data" do
    it "shows data for a zip code" do
      items = BestBuyService.new.data(search)

      expect(page).to have_content("Camera")
    end
  end
end
