require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ServiceCategory.destroy_all
Request.destroy_all
Category.destroy_all
Service.destroy_all
User.destroy_all

5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street: '12519 NE 85th Street',
    city: 'Kirkland',
    state: 'WA',
    zipcode: 98_033,
    birth_year: rand(1980..2000),
    img_url: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: '123',
    password_confirmation: '123'
  )
end
5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street: '432 Octavia St ',
    city: 'San Francisco',
    state: 'CA',
    zipcode: 94_102,
    birth_year: rand(1980..2000),
    img_url: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: '123',
    password_confirmation: '123'
  )
end
5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street: '575 Bellevue Square',
    city: 'Bellevue',
    state: 'Wa',
    zipcode: 98_004,
    birth_year: rand(1980..2000),
    img_url: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: '123',
    password_confirmation: '123'
  )
end

5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=8",
    # img_url: "https://robohash.org/#{rand(1900..2000)})/?set=set4",
    value: rand(20..200),
    user_id: User.all.sample.id
  )
end
5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=6",
    # img_url: "https://robohash.org/#{rand(1900..2000)})/?set=set4",
    value: rand(20..200),
    user_id: User.all.sample.id
  )
end
5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=4",
    # img_url: "https://robohash.org/#{rand(1900..2000)})/?set=set4",
    value: rand(20..200),
    user_id: User.all.sample.id
  )
end
5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=3",
    value: rand(20..200),
    user_id: User.all.sample.id
  )
end
5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=10",
    value: rand(20..200),
    user_id: User.all.sample.id
  )
end
5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=2",

    value: rand(20..200),
    user_id: User.all.sample.id
  )
end
5.times do
  Service.create(
    name: Faker::Commerce.product_name,
    isService: %i[true false].sample,
    offeringDescription: Faker::Lorem.sentence,
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: "https://picsum.photos/200/300?random=5",

    value: rand(20..200),
    user_id: User.all.sample.id
  )
end

30.times do
  Request.create(
    status: %i[approved denied pending].sample,
    message: Faker::Lorem.sentence,
    response_service_id: Service.all.sample.id,
    requested_service_id: Service.all.sample.id
  )
end

20.times do
  Category.create(
    name: Faker::Commerce.department
  )
end

40.times do
  ServiceCategory.create(
    category_id: Category.all.sample.id,
    service_id: Service.all.sample.id
  )
end

puts 'seeded'
