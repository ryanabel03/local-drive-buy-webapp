class ListingsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @listings = current_user.listings 
  end

  def index 
    redirect_to action: "show"
  end

  def create
    @listing = current_user.listings.build(params[:listings])

    if @listing.save
      redirect_to listings_path 
    else
      puts "could not save listing #{@listing}"
      redirect_to new_listing_path
    end
  end

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy

    redirect_to listings_path
  end
end
