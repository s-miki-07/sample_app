require 'rails_helper'

RSpec.describe "Static_pages" do

 let(:base_title) { "Ruby on Rails Tutorial Sample App"}
  describe "Hom page" do

    it "shouled have the content 'Sample App'" do

      visit '/static_pages/home'

       expect(page).to have_content("Sample App")
    end

   it "shouled have the title 'home'" do
       visit '/static_pages/home'

       expect(page).to have_title("#'{base_title} | Home")  
    end
  end


describe "Help page" do

  it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

  it "shouled have the title 'Help'" do
       visit '/static_pages/help'

       expect(page).to have_title("#'{base_title} | Help")  
    end
  end

  describe "About page" do
    it "shoule have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About us')
  end


  it "shouled have the title 'About Us'" do
       visit '/static_pages/about'

       expect(page).to have_title("#'{base_title} | About Us")  
    end


 end

 describe "Contact page" do
    visit '/static_pages/contact'
  expect(page).to have_content('Contcat')
  
  end
 
    
  it "shouled have the title 'Contact'" do
       visit '/static_pages/contact'


       expect(page).to have_title("#'{base_title} | Contact")  
 end

end


