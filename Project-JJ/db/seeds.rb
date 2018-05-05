# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: "Music")
Category.create(name: "Animals")
Category.create(name: "Medical")
Category.create(name: "Technology")
Category.create(name: "Social")
Category.create(name: "Education")
Category.create(name: "Ecologic")
Category.create(name: "Sports")
Category.create(name: "Food")
Category.create(name: "Applications")
Category.create(name: "Architecture")

user = User.new
user.email= "javaldivieso1@miuandes.cl"
user.password = "lala123"
user.save
Project.create(title: "BitClinic", description: "Easy clinic transactions", donationamount: 1, category: "Medical", user_id: 1)
Project.create(title: "Save the Meerkats", description: "Save the meerkats by helping our cause", donationamount: 1, category: "Animals", user_id: 1)
Project.create(title: "EasyVacation", description: "Travel easier and cheaper", donationamount: 1, category: "Social", user_id: 1)
Project.create(title: "MobileMe", description: "Connecting people all around the world", donationamount: 1, category: "Application", user_id: 1)

