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
user.save!

imagendata = File.new('/home/juan/Desktop/course-project-crowdchile/Project-JJ/db/Cesme-700x400.jpg')
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

imagendata = File.new('/home/juan/Desktop/course-project-crowdchile/Project-JJ/db/meerkat-1309608-700x400.jpg')
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

imagendata = File.new('/home/juan/Desktop/course-project-crowdchile/Project-JJ/db/plo.jpg')
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





