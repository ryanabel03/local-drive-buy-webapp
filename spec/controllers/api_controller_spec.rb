require 'spec_helper'

describe ApiController do

  describe "#listings_by_category" do
    let(:listing) { create(:listing) }

    it "returns a listing based on a filter" do
      Listing.expects(:where).with("category = ?", "furniture").returns(listing)

      get :listings_by_category, category: "furniture"

      response.should == listing
    end
  end
end
