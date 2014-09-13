require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home Page" do
    before(:each) { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help Page" do
    before(:each) { visit help_path }
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About Page" do
    before(:each) { visit about_path }
    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact Page" do
    before(:each) { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
