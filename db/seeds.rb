# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  { name: "Chez Pierre", address: "123 Rue de Paris, Paris", phone_number: "01 23 45 67 89", category: "french" },
  { name: "Sushi World", address: "456 Tokyo St, Tokyo", phone_number: "03 1234 5678", category: "japanese" },
  { name: "Pasta Basta", address: "789 Roma Ave, Rome", phone_number: "06 9876 5432", category: "italian" },
  { name: "Dragon's Delight", address: "321 Beijing Rd, Beijing", phone_number: "010 8765 4321", category: "chinese" },
  { name: "Leuven Bistro", address: "654 Leuven St, Leuven", phone_number: "016 123 4567", category: "belgian" }
]

reviews = [
  { rating: 5, content: "Amazing food and great service!" },
  { rating: 4, content: "Fresh sushi, will come again." },
  { rating: 3, content: "Good pasta but a bit pricey." },
  { rating: 4, content: "Delicious flavors and cozy atmosphere." },
  { rating: 5, content: "Best waffles in town!" }
]

restaurants.each_with_index do |restaurant_attrs, index|
  restaurant = Restaurant.create!(restaurant_attrs)
  10.times do
    Review.create!(rating: reviews[index][:rating], content: reviews[index][:content], restaurant: restaurant)
  end
end
