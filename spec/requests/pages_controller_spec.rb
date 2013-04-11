require 'spec_helper'



describe "Pages" do



before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"  
  end




  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/pages/home'
      page.should have_selector('h1', content: "Sample App")
    end

    it "should have the base title" do
       visit '/pages/home'
      page.should have_selector('title', content: @base_title)
    end

    it "should not have a custom page title" do
      visit '/pages/home'
      page.should_not have_selector('title', content: '| Home')
    end
  end





  describe "GET 'contact'" do
    it "returns http success" do
      visit 'pages/contact'
      response.should be_success
    end
    it "should have right title" do
     visit 'pages/contact'
      response.should have_selector("title", content: @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      visit 'pages/about'
      response.should be_success
    end
    it "should have right title" do
      visit 'pages/about'
      response.should have_selector("title", content: @base_title + " | About")
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      visit 'pages/help'
      response.should be_success
    end
    it "should have right title" do
      visit 'pages/help'
      response.should have_selector("title", content: @base_title + " | Help")
    end
  end
  
end
