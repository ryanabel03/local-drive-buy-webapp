require "spec_helper"


Describe "Users" do
  it "redirects a user to their profile when they login" do
    visit root_path

    page.should have_content "Username"
    page.should have_content "Password"
  end
end
