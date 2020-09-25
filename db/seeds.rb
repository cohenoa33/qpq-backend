# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






# Faker::Commerce.department    "Grocery, Health & Beauty"
# Faker::Commerce.product_name "Practical Granite Shirt"

# Faker::Lorem.sentence 
# Faker::Lorem.paragraph

# join tables are last

Users.destroy_all
Services.destroy_all
Categories.destroy_all
Service_categories.destroy_all
Requests.destroy_all

30.times do
	User.create({
  first_name:  Faker::Name.first_name, 
  last_name:  Faker::Name.last_name,
  street:Faker::Address.street_name,
  city:Faker:: Address.city,
  state: Faker::Address.state_abbr,
  zipcode: Faker::Address.zip_code,
  birth_year: Faker::Date.birthday(min_age: 18, max_age: 65),
  img_url: Faker::Avatar.image,
  email: Faker::Internet.email,
  password:	Faker::Internet.password,
  password_confirmation:
})
end

30.times do
  Service.create( 
    name: Faker::Commerce.product_name, 
    isService:
    offeringDescription: Faker::Lorem.sentence, 
    exchangeDescription: Faker::Lorem.paragraph,
    img_url: Faker::LoremFlickr.image,
    value:
)

20.times do
  Categories.create({
    name: Faker::Commerce.department 

  })

# this needs something different for increment
# X.times do    
  # Service_categories.create({
  #   category_id:
  #   service_id:
  # })

  # X.times do 
  # Request.create({
  #   status:
  #   message: Faker::Lorem.paragraph,
  #   user_id:
  #   service_id:
  # })


  puts "Data is seeded"