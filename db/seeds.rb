# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Product.destroy_all




10.times do
    Product.find_or_create_by(name: Faker::Food.vegetables,price: rand(20), category: 'food', description: Faker::Food.description, quantity: 20)
end

10.times do
    Product.find_or_create_by(name: Faker::Food.fruits, price: rand(20), category: 'food', description: Faker::Food.description, quantity: 20)
end

10.times do
    Product.find_or_create_by(name: Faker::Commerce.product_name, price: Faker::Commerce.price, category: 'general', description: Faker::Lorem.paragraph, quantity: 20)
end
