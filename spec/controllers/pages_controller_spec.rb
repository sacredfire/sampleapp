require 'spec_helper'

describe PagesController do
	render_views
	
before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"  
  end

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      get 'home'
      page.should have_selector('h1', content: 'Sample App')
    end

    it "should have the base title" do
      get 'home'
      page.should have_selector('title', content: @base_title)
    end

    it "should not have a custom page title" do
      get 'home'
      page.should_not have_selector('title', content: '| Home')
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    it "should have right title" do
      get 'contact'
      response.should have_selector("title",:content => @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    it "should have right title" do
      get 'about'
      response.should have_selector("title",:content => @base_title + " | About")
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_success
    end
    it "should have right title" do
      get 'help'
      response.should have_selector("title",:content => @base_title + " | Help")
    end
  end
  
end
