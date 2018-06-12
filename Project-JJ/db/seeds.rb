# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Animals")
Category.create(name: "Medical")
Category.create(name: "Technology")
Category.create(name: "Social")
Category.create(name: "Education")
Category.create(name: "Ecologic")
Category.create(name: "Sports")
Category.create(name: "Food")
Category.create(name: "Architecture")
Category.create(name: "Applications")


#Admin seeds
user = User.new
user.email = 'admin@example1.com'
user.password = 'admin123'
user.password_confirmation = 'admin123'
user.admin = true
user.save!







