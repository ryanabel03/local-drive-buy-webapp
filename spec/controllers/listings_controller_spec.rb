require 'spec_helper'

describe ListingsController do

  describe "#create" do
    before do
      sign_in_user
    end

    context "with valid attributes" do
      it "creates a new listing" do
        expect {
          post :create, listings: attributes_for(:listing)
        }.to change(Listing, :count).by(1)
      end

      it "redirects to the listings page" do
        post :create, listings: attributes_for(:listing)
        
        response.should redirect_to listings_path 
      end
    end

    context "with invalid attributes" do
      it "does not create a new listing if it is invalid" do
        expect {
          post :create, listings: attributes_for(:invalid_listing)
        }.to change(Listing, :count).by(0)
      end

      it "redirects to the creation page" do
        post :create, listings: attributes_for(:invalid_listing)
        
        response.should redirect_to new_listing_path 
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

  describe "#destroy" do

    before do
      @listing = Listing.create(attributes_for(:listing))
      sign_in_user
    end

    it "deletes the listing with the matching id" do
      expect {
        delete :destroy, id: @listing.id 
      }.to change(Listing, :count).by(-1)
    end
  end

end
