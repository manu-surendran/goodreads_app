require 'spec_helper'

describe "Static pages" do

  subject {page}

  describe "Home page" do

    before{visit root_path}
      
      it {should have_selector('h1', :text => 'GoodReads App')}

      
      it {should have_selector('title',
                        :text => "Ruby on Rails Tutorial GoodReads App | Home")}
  end

  describe "Help page" do

    before{visit help_path}
      
      it {should have_selector('h1', :text => 'Help')}

      
      it {should have_selector('title',
                        :text => "Ruby on Rails Tutorial GoodReads App | Help")}
  end

  describe "About page" do

    before{visit about_path}
      
      it {should have_selector('h1', :text => 'About Us')}
      
      it {should have_selector('title',
                    :text => "Ruby on Rails Tutorial GoodReads App | About Us")}
  end

  describe "Contact page" do

    before{visit contact_path}
      
      it {should have_selector('h1', text: 'Contact')}
      
      it {should have_selector('title',
                    text: "Ruby on Rails Tutorial GoodReads App | Contact")}
  end
end