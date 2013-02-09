require "spec_helper"

describe "Listings" do
  it "allows you to create and delete listings" do
    visit root_path
    click_link "Listings"

    page.should have_content "Your Listings"
    
    click_button "Add Listing"

    page.should have_content "Listing Title"
    page.should have_content "Description"
    page.should have_content "Address"
    page.should have_content "Line 2"
    page.should have_content "City"
    page.should have_content "State"
    page.should have_content "Zip Code"
    # page.should have_content "Image"

    fill_in "Listing Title", with: "My Listing"
    fill_in "Description", with: "Some description for listing 1."
    fill_in "Address", with: "111 Cherry St."
    fill_in "Line 2", with: "Apt E5"
    fill_in "City", with: "Grand Rapids"
    page.select "Michigan", from: "listings_state"
    # page.select "Furniture", from: "categorypicker"
    fill_in "Zip Code", with: 55555

    # click_button "Add photo"
    # path = File.join(::Rails.root, "spec/fixtures/couch")
    # attach_file("file", path)
    # click_button "Upload"

    click_button "Create"

    page.should have_content "My Listing"
    page.should have_content "Some description for listing 1."
    page.should_not have_selector "listing-input"
  end
end
