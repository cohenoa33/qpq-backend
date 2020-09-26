require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(
  first_name:  Faker::Name.first_name, 
  last_name:  Faker::Name.last_name,
  street: "12519 NE 85th Street",
  city: "Kirkland",
  state: "WA",
  zipcode: 98033,
  birth_year: 1993,
  img_url: Faker::Avatar.image,
  email: Faker::Internet.email,
  password: "helloThere1",
  password_confirmation: "helloThere1"
)


puts "seeded"
