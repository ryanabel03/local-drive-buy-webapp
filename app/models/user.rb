class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name, :phone, :state, :zip, :address_one,
                  :address_two, :city, :avatar

  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}, default_url: "images/:style/missing.png"
  has_many :listings

end
