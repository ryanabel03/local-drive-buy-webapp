class ListingsController < ApplicationController
  before_filter :authenticate_user!

  def show
    @listings = []
    if current_user.listings
      @listings = current_user.listings 
    end
  end

  def index 
    @listings = []
    if current_user.listings
      @listings = current_user.listings 
    end
  end

  def create
    puts params
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

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    new_listing = Listing.find(params[:id])
    if new_listing.update_attributes(params[:listing])
      redirect_to listings_path
    end
  end
end
