class ApiController < ApplicationController

  def listings
    render json: Listing.all
  end
end
