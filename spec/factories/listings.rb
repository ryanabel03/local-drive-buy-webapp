FactoryGirl.define do
  factory :listing do |f|
    f.title "Listing 1"
    f.description "Some awesome description for the first listing"
    f.address "111 Cherry St."
    f.city "Holland"
    f.state "MI"
    f.zip 49460
  end
end
