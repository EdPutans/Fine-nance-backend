# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 User.create(name: 'Aisha', email: "aisha@amazing.com", password:  "pineapple",rent: 2000, food: 500, utilities: 100, clothes: 440.5, travel: "350", other: 6.7, token:"RandomTokenAisha")
 User.create(name: 'Ed', email: "ed@amazing.com", password:  "quack",rent: 200, food: 300, utilities: 500, clothes: 100.5, travel: "34", other: 200.7,token:"RandomTokenEd")
 User.create(name: 'Dina', email: "dina@amazing.com", password:  "style",rent: 100, food: 135, utilities: 20, clothes: 200.5, travel: "135", other: 8.7, token:"RandomTokenDina")

 Objective.create(user_id: 1, name: "Holiday", current_amount: 1, total_amount: 780)
 Objective.create(user_id: 1, name: "Car", current_amount: 56, total_amount: 1500)
 Objective.create(user_id: 1, name: "Laptop", current_amount: 12, total_amount: 800)

 Objective.create(user_id: 2, name: "Holiday", current_amount: 64, total_amount: 1500)
 Objective.create(user_id: 2, name: "House", current_amount: 23340, total_amount: 35000)

 Objective.create(user_id: 3, name: "Holiday", current_amount: 254.5, total_amount: 900)

 Follow.create(followee_id: 1, follower_id: 3)
 
 Follow.create(followee_id: 2, follower_id: 3)
 Follow.create(followee_id: 2, follower_id: 1)
