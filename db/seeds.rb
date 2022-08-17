# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
fiveguys = {
  name: "Five Guys",
  address: "Virginia Beach, 765, USA",
  phone_number: '634-9372',
  category: 'belgian'
}
papa_johns_pizza =  {
  name: "Papa Johns Pizza",
  address: "McLean 776, USA",
  phone_number: '634-9652',
  category: 'japanese'
}
cava =  {
  name: "CAVA",
  address: "FAirfax 876, USA",
  phone_number: '453-9372',
  category: 'french'
}
temakeria =  {
  name: "Temakeria",
  address: 'Arlington 55, USA',
  phone_number: '634-4535',
  category: 'chinese'
}
steak_house =  {
  name: "Steak House",
  address: "Washington DC 83, USA",
  phone_number: '634-3213',
  category: 'italian'
}

[fiveguys, papa_johns_pizza, cava, temakeria, steak_house].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
