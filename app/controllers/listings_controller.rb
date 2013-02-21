class ListingsController < ApplicationController

  def show
  end

  def create
    @listing = current_user.listings.build(params[:listing])

    if @listing.save
      redirect_to listings_path 
    else
      redirect_to new_listings_path
    end
  end
end
