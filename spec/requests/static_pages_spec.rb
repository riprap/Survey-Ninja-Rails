require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Survey Ninja" }

  describe "Home page" do
    it "should have the content 'Survey Ninja'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home/'
      expect(page).to have_content('Survey Ninja')
    end

    it "should have the right title" do
    	visit '/static_pages/home/'
    	expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help/'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
    	visit '/static_pages/help/'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact/'
      expect(page).to have_content('Contact Us')
    end

    it "should have the right title" do
    	visit '/static_pages/contact/'
    	expect(page).to have_title("#{base_title} | Contact Us")
    end
  end
end
