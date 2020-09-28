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
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  street: '12519 NE 85th Street',
  city: 'Kirkland',
  state: 'WA',
  zipcode: 98_033,
  birth_year: 1993,
  img_url: Faker::Avatar.image,
  email: Faker::Internet.email,
  password: 'helloThere1',
  password_confirmation: 'helloThere1'
)

Service.create(
  name: 'photography',
  isService: true,
<<<<<<< HEAD
  offeringDescription: "I am offering professional headshots",
  exchangeDescription: "In exchange, they have a value of 25 point for one headshot",
  img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQeiX0wZhnW9Z6oqu6xNHC2DO5He7h4Kb6jaA&usqp=CAU",
  value: 20, 
  user_id: User.all.first
=======
  offeringDescription: 'I am offering professional headshots',
  exchangeDescription: 'In exchange, they have a value of 25 point for one headshot',
  img_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQeiX0wZhnW9Z6oqu6xNHC2DO5He7h4Kb6jaA&usqp=CAU',
  value: 20,
  user_id: User.all.sample.id
>>>>>>> 944512a90dfbd5927184de3ecdc90a8859616ee4
)

Request.create(
  status: 'approved',
  message: 'HHHHH',
  provider_id: 7,
  requester_id: 6,
  service_id: Service.all.sample.id
)

puts 'seeded'
