require 'rails_helper'

RSpec.describe "Static_pages", type: :request do
  describe "GET /Static_pages" do
    it "works! (static_pages)" do
     #get Static_pages
      visit '/static_pages/home'
      #expect(response).to have_http_status(200)
       expect(page).to have_content("Sample App")
    end

   it "shouled have the title 'home'" do
       visit '/static_pages/home'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")  
    end
  end


describe "Help page" do

  it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

  it "shouled have the title 'help'" do
       visit '/static_pages/help'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")  
    end
  end

  describe "About page" do
    it "shoule have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About')
  end


  it "shouled have the title 'About Us'" do
       visit '/static_pages/about'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | About us")  
    end
 end
end


