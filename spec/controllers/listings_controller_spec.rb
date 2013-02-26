require 'spec_helper'

describe ListingsController do

  describe "#create" do
    before do
      sign_in_user
    end

    context "with valid attributes" do

      it "creates a new listing" do
        expect {
          post :create, listing: attributes_for(:listing)
        }.to change(Listing, :count).by(1)
      end

      it "redirects to the listings page" do
        post :create, listing: attributes_for(:listing)
        
        response.should redirect_to listings_path 
      end
    end

    context "with invalid attributes" do
      it "does not create a new listing if it is invalid" do
        expect {
          post :create, listing: attributes_for(:invalid_listing)
        }.to change(Listing, :count).by(0)
      end

      it "redirects to the creation page" do
        post :create, listing: attributes_for(:invalid_listing)
        
        response.should redirect_to new_listings_path 
      end
    end
  end

  describe "#show" do
    before do
      sign_in_user
    end

    it "gets all listings for the current user" do
      listings = mock "listings"
      subject.current_user.expects(:listings).returns listings

      get :show

      assigns[:listings].should == listings
    end
  end
end
