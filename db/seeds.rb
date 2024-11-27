# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Restaurant.create!(
  name: "Italian Bistro",
  address: "123 Pasta St, Roma, Italy",
  phone_number: "+39 06 1234567",
  category: "italian"
)

Restaurant.create!(
  name: "Sushi World",
  address: "456 Fish Lane, Tokyo, Japan",
  phone_number: "+81 3 2345678",
  category: "japanese"
)

Restaurant.create!(
  name: "Le Petit Paris",
  address: "789 Rue de Paris, Paris, France",
  phone_number: "+33 1 3456789",
  category: "french"
)

Restaurant.create!(
  name: "Biergarten Berlin",
  address: "101 Brewster Ave, Berlin, Germany",
  phone_number: "+49 30 9876543",
  category: "belgian"
)

Restaurant.create!(
  name: "Peking Duck House",
  address: "202 Duck Rd, Beijing, China",
  phone_number: "+86 10 8765432",
  category: "chinese"
)
