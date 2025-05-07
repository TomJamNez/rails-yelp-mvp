# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


#1. Clean the db
puts "Cleaning database...."
Restaurant.destroy_all

#2. Create the instances
puts "Creating Restaurants"
Restaurant.create!(name: "bobs pizza", address: "2 bonnie street, Bristol, B1 1XP", phone_number:"01202 123456", category: "chinese")
puts "Created Bobs Pizza"
Restaurant.create!(name: "charlies chips", address: "3 chucky street, Chemlsford, CM2 2PA", phone_number:"01203 123456", category: "italian")
puts "Created charlies chips"
Restaurant.create!(name: "dannys donner kebab", address: "4 disney road , Dublin, Dublin 6", phone_number:"01204 123456", category: "japanese")
puts "Created dannys donner chips"
Restaurant.create!(name: "evans eatery", address: "5 echo lane, everton, E17 1PP", phone_number:"01205 123456", category: "french")
puts "Created evans eatery chips"
Restaurant.create!(name: "frankies fish", address: "6 foxtrot road, fordham, F1 6P2", phone_number:"01206 123456", category: "belgian")
puts "Created frankies fish chips"

puts "Finished! Created #{Restaurant.count} restaurants."
