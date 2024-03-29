require 'spec_helper'

describe "LayoutLinks" do

	it "should have a Home page at '/'"do
	get '/'
	response.should have_selector('title', :content => "Home")
	end

	it "should have a Contact page at '/'"do
	get '/contact'
	response.should have_selector('title',:content => "Contact")
	end

	it "should have a About page at '/'"do
	get '/about'
	response.should have_selector('title',:content => "About")
	end

	it "should have a Help page at '/'"do
	get '/help'
	response.should have_selector('title',:content => "Help")
	end

	it "should have a signup page at '/signup'"do
	get '/signup'
	response.should have_selector('title',:content => "Sign Up")
	end

	it "should have the right links on the layout"do
	visit root_path
	click_link "About"
	response.should have_selector('title', :content	=> "About")
	visit root_path
	click_link "Contact"
	response.should have_selector('title', :content	=> "Contact")
	visit root_path
	click_link "Help"
	response.should have_selector('title', :content	=> "Help")
	visit root_path
	click_link "Sign Up"
	response.should have_selector('title', :content	=> "Sign Up")
	end
end

