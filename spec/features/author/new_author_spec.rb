require 'rails_helper'

 describe "New authors page", type: :feature do
   it "should exist at 'new_author_path' and render withour error" do
      # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
   end
   it "should have an input field for new authors, asking for first name, last name and hoepage" do
     visit new_author_path
     # these are the standard names given to inputs by the Rails form builder
     expect(page).to have_field('first_name')
     expect(page).to have_field('last_name')
     expect(page).to have_field('homepage')
   end
 end
