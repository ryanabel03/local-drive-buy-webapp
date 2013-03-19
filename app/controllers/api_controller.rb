class ApiController < ApplicationController

  def listings
    render json: Listing.all.to_json
  end

  def listings_by_category
    render json: Listing.where("category = ?",  params[:category])
  end

  def listings_by_category_filtered
    render json: Listing.where("categoy = ? AND filter ?", params[:category], params[:filters])
  end
end
