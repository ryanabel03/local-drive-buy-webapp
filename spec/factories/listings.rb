FactoryGirl.define do
  factory :listing do |f|
    f.title "Listing 1"
    f.description "Some awesome description for the first listing"
    f.address "111 Cherry St."
    f.city "Holland"
    f.state "MI"
    f.zip 49460
  end

  factory :invalid_listing, class: Listing do |f|
    f.title "Listing 1"
    f.description "Some awesome description for the first listing"
    f.address "111 Cherry St."
    f.city "Holland"
    f.state "MI"
    f.zip nil 
  end

  factory :user do
    sequence(:email) { |n| "Person_#{n}@somedomain.com" }
    password "password"
    password_confirmation "password"
    remember_me true
  end
end
