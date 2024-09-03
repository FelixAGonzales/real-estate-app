# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'ffaker'

30.times do
  real_estate = RealEstate.new(
    description: ["This is a great home", "This home is in an up and coming neighborhood", "There are a lot of stores nearby", "The schools in this town are one of the best in the country"].sample,
    year_built: rand(1900..2024),
    square_feet: rand(500..5000),
    bedrooms: rand(1..4),
    bathrooms: rand(1..3),
    floors: rand(1..2),
    availability: ["Yes","No"].sample,
    address: "#{FFaker::Address.street_address}, #{FFaker::Address.city}, #{FFaker::AddressUS.zip_code}",
    price: rand(50000..1000000),
  )
  
  real_estate.save
end
