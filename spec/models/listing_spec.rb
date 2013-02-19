require 'spec_helper'

describe Listing do
  describe "validations" do
    it "validates zip code" do
      listing = build(:listing, zip: 333333)
      listing.should_not be_valid

      listing.zip = 42423
      listing.should be_valid

      listing.zip = 43443-3233
      listing.should be_valid

    end

    it "validates presence of city, state, title, and description" do
      listing = build(:listing)

      listing.should be_valid

      listing.title = nil

      listing.should_not be_valid
    end
  end
end
