class Listing < ActiveRecord::Base
  attr_accessible  :description, :title, :category, :sub_category

  # validates_format_of :zip, with: /^\d{5}(-\d{4})?$/, message: "Invalid zip code"

  validates_presence_of :title, :description

  belongs_to :user

end
