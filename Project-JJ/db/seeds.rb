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
user.email = 'admin@example.com'
user.password = 'admin123'
user.password_confirmation = 'admin123'
user.admin = true
user.description = "Site admin"
user.save!

#Normal user seed
user = User.new
user.email = 'jcampos@miuandes.cl'
user.password = 'abc12345'
user.password_confirmation = 'abc12345'
user.admin = false
user.description = "Uandes student"
user.save!


#Outstanding projects seed
rutaimagen= Rails.root + 'public/Cesme-700x400.jpg'
imagendata = File.open(rutaimagen)
project = Project.new
project.title = "EasyVacation" 
project.description = 'An easy and cheap way to go to the places you dream of. Hop on!'
project.user_id = 1
project.image = imagendata
project.mark = true
project.category_id = 1
project.donationamount = 100
project.deliverydate = Time.now
project.save!

rutaimagen= Rails.root + 'public/meerkat.jpg'
imagendata = File.open(rutaimagen)
project = Project.new
project.title = "Save the meerkats" 
project.description = 'Meerkats are endangered species from Africa. Help us with our project and help them with their lifestyle.'
project.user_id = 1
project.image = imagendata
project.mark = true
project.category_id = 1
project.donationamount = 100
project.deliverydate = Time.now
project.save!

rutaimagen= Rails.root + 'public/plo.jpg'
imagendata = File.open(rutaimagen)
project = Project.new
project.title = "MobileMe" 
project.description = 'Everyone in the world deserves to be connected. With MobileMe, it is easier to access all kinds of technology all around the world.'
project.user_id = 1
project.image = imagendata
project.mark = true
project.category_id = 1
project.donationamount = 100
project.deliverydate = Time.now
project.save!

#Normal project seed (to test outstanding feature)
rutaimagen= Rails.root + 'public/music.jpg'
imagendata = File.open(rutaimagen)
project = Project.new
project.title = "MusicMatch" 
project.description = 'Featuring the best songs in the entire website, connect and share with your friends.'
project.user_id = 2
project.image = imagendata
project.mark = false
project.category_id = 1
project.donationamount = 100
project.deliverydate = Time.now
project.save!






