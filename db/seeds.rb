# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.find_or_create_by(email: "michael3mcguire@gmail.com") do |user|
  user.first_name = "Michael"
  user.last_name = "McGuire"
  user.password = "123456"
end

User.find_or_create_by(email: "dani@worthsearch.com") do |user|
  user.first_name = "Dani"
  user.last_name = "Dugan"
  user.password = "123456"
end

User.find_or_create_by(email: "jesse@welomehomes.com") do |user|
  user.first_name = "Jesse"
  user.last_name = "Mauro"
  user.password = "123456"
end

User.find_or_create_by(email: "jose@welomehomes.com") do |user|
  user.first_name = "Jose"
  user.last_name = "Camacho"
  user.password = "123456"
end

User.find_or_create_by(email: "admin@admin.com") do |user|
  user.first_name = "Admin"
  user.last_name = "Admin"
  user.password = "123456"
end

Admin.find_or_create_by(email: "admin@admin.com") do |admin|
  admin.first_name = "Admin"
  admin.last_name = "Admin"
  admin.password = "123456"
end

Admin.find_or_create_by(email: "a@a.com") do |admin|
  admin.first_name = "Admin"
  admin.last_name = "Admin2"
  admin.password = "123456"
end

User.find_or_create_by(email: "customer@customer.com") do |user|
  user.first_name = "Customer"
  user.last_name = "Customer"
  user.password = "123456"
end






