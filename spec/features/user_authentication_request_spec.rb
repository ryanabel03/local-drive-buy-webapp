require "spec_helper"


describe "Users" do
  it "redirects a user to their profile when they login" do
    visit root_path

    page.should have_content "You need to sign"
    page.should have_content "Email"
    page.should have_content "Password"

    fill_in "Email", with: "testuser@somedomain.com"
    fill_in "Password", with: "password"

    click_button "Sign in"

    page.should have_content "Profile"
  end
end
