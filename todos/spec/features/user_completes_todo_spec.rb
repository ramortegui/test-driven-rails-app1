require 'rails_helper'

feature "User complete a todo" do
  scenario "successfully" do
    sign_in
    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"
    click_on "Mark completed"
    expect(page).to have_css ".todos li.completed", text:"Buy milk"
  end 
end
