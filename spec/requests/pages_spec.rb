require 'spec_helper'
require "capybara/rspec/matchers"

describe "Pages" do

  describe "About page" do
  
    it "should have the content 'About Us'" do
    	visit '/pages#about'
    	expect(page).to have_content('About Us')
    end

    it "should have the 'kompaqt_skinny_logo3' image file" do
    	visit '/pages#about'
    	expect(page).to have_content('/assets/images/kompaqt_skinny_logo3.png')
    end

    it "should have the right title" do
      expect(page).to have_content("Kompaqt | About")
    end
  end
end
