# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

puts "loading"

Restaurant.create(name: "Epicure", address: "75008 Paris", category: "french")
Restaurant.create(name: "Noodles", address: "192 Pekin", category: "chinese")
Restaurant.create(name: "Pizza", address: "301 Milan", category: "italian")
Restaurant.create(name: "sushi", address: "71 Tokyo", category: "japanese")
Restaurant.create(name: "frite", address: "163 Brussel", category: "belgian")

puts "Generated  #{Restaurant.count} Restaurants !"

