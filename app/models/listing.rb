class Listing < ActiveRecord::Base
  attr_accessible :address, :city, :description, :state, :title, :zip

  validates_format_of :zip, with: /^\d{5}(-\d{4})?$/, message: "Invalid zip code"

  validates_presence_of :title, :state, :description

  belongs_to :user
end
