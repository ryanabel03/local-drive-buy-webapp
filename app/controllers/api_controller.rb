class ApiController < ApplicationController

  def listings
    listings = Listing.all
    listings.each do |listing|
      user = User.find_by_id(listing.user_id)
      user_info =
        {
          phone: user.phone,
          avatar: user.avatar.url,
          business_name: user.business_name,
          city: user.city,
          state: user.state,
          zip: user.zip,
          address_one: user.address_one,
          address_two: user.address_two
      }
      listing[:user] = user_info
    end

    render json: listings
  end
end
