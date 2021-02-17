# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all
p 'Database erased.'
25.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.state,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES
  )
end
p 'New restaurants saved!'
