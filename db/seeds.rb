require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(
  first_name:  Faker::Name.first_name, 
  last_name:  Faker::Name.last_name,
  street:Faker::Address.street_name,
  city:Faker::Address.city,
  state: Faker::Address.state_abbr,
  zipcode: Faker::Address.zip_code,
  birth_year: 1993,
  img_url: Faker::Avatar.image,
  email: Faker::Internet.email,
  password: "helloThere1",
  password_confirmation: "helloThere1"
)

Service.create(
  name: "photography",
  isService: true,
  offeringDescription: "I am offering professional headshots",
  exchangeDescription: "In exchange, they have a value of 25 point for one headshot",
  img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQeiX0wZhnW9Z6oqu6xNHC2DO5He7h4Kb6jaA&usqp=CAU",
  value: 20, 
  user_id: User.all.first
)

puts "seeded"
