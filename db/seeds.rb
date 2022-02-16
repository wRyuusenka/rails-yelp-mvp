# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Ending the restaurant world..."
Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts "A new culinary legend begins..."
20.times do |restaurant|
  Restaurant.create!(
    name: "#{Faker::Cannabis.brand}",
    address: "#{Faker::Games::Pokemon.location}",
    phone_number: "#{Faker::PhoneNumber.cell_phone}",
    category: categories.sample
  )
end

puts "...created #{Restaurant.count} restaurants"