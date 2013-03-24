class Image < ActiveRecord::Base
  attr_accessible: :location_image_1, :location_image_2, :location_image_3, :location_image_4

  has_attached_file :location_image_1, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :location_image_2, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :location_image_3, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :location_image_4, styles: { medium: "300x300>", thumb: "100x100>" }
end
