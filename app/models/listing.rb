class Listing < ActiveRecord::Base
  attr_accessible  :description, :title, :category, :sub_category

  validates_presence_of :title, :description

  belongs_to :user
  
  serialize :filters
end
