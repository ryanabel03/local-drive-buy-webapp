class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name, :phone, :state, :zip, :address_one,
                  :address_two, :city, :avatar, :business_name

  validates_presence_of :first_name, :last_name, :business_name

  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}, default_url: "missing.jpg"
  has_many :listings

end
