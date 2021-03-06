require 'spec_helper'

describe "SamplePages/" do
  describe "GET /static_pages" do
    it "should have the content 'Sample App'" do

      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

   describe "Help Page" do
    it "should have the content 'Help'"  do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "Should have base title" do
        visit '/static_pages/help'
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About Page" do
    it "should have the content 'About Us'"  do

      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end
end
