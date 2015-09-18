require 'rails_helper'

RSpec.describe "Static_pages", type: :request do
  describe "GET /Static_pages" do
    it "works! (static_pages)" do
     #get Static_pages
      visit '/static_pages/home'
      #expect(response).to have_http_status(200)
       expect(page).to have_content("Sample App")
    end
  end


describe "Help page" do

  it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    it "shoule habe the content 'About Us'" do
    visit '/static_pages_/about'
    expect(page).to have_content('About us')
  end
 end
end


