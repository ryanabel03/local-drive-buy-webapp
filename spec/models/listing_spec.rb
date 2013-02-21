require 'spec_helper'

describe Listing do
  let(:user) { create(:user) }

  before { @listing = user.listings.build(attributes_for(:listing)) }

  subject { @listing }

  its(:user) { should == user }

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
      listing = build_valid_listing

      listing.title = nil

      listing.should_not be_valid

      listing = build_valid_listing
      listing.state = nil

      listing.should_not be_valid

      listing = build_valid_listing
      listing.description = nil

      listing.should_not be_valid
    end
  end

  def build_valid_listing 
    listing = build(:listing)
    listing.should be_valid
    listing
  end
end
