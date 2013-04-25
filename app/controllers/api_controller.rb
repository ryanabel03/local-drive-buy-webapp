class ApiController < ApplicationController
  def listings
    listings = Listing.all
    listings.each do |listing|
      user = User.find_by_id(listing.user_id)
      if user
        listing["user_info"] = 
          {
            phone: user.phone,
            business_name: user.business_name,
            city: user.city,
            state: user.state,
            zip: user.zip,
            address_one: user.address_one,
            address_two: user.address_two,
            pic_url: user.avatar
        }
      end
    end

    render json: listings
  end


  def category(index)
  end
end
