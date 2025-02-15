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

burgerKing = Restaurant.new(name: "burger King", address: "Clapham", phone_number: "0207765429", category: "french")
burgerKing.save

hakasan = Restaurant.new(name: "hakasan", address: "Brixton", phone_number: "02088776542", category: "japanese")
hakasan.save

vapiano = Restaurant.new(name: "vapiano", address: "Tower Bridge", phone_number: "02075836829", category: "Italian")
vapiano.save

belgianWaffle = Restaurant.new(name: "Belgian waffle", address: "Tower Bridge", phone_number: "02075836829", category: "belgian")
belgianWaffle.save

goldenPalace = Restaurant.new(name: "Golden Palace", address: "Tower Bridge", phone_number: "02075836829", category: "chinese")
goldenPalace.save

puts "Created #{Restaurant.count} Restaurant"
