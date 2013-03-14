class ListingsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @listings = current_user.listings 
  end

  def create
    @listing = current_user.listings.build(params[:listings])

    if @listing.save
      redirect_to listings_path 
    else
      redirect_to new_listings_path
    end
  end
end
