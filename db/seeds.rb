# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "112233" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "223344" }
gulja = { name: "Gulja", address: "75008 Paris", category: "belgian", phone_number: "111333888" }
reine = { name: "Reine", address: "380 Collins St, Melbourne", category: "japanese", phone_number: "333444" }
bamboo = { name: "Bamboo", address: "47 Little Bourke St, Melbourne", category: "chinese", phone_number: "555666" }

[dishoom, pizza_east, gulja, reine, bamboo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
