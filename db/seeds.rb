# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Mohamed", password: "password")
User.create(username: "Marwa", password: "password")
User.create(username: "belal", password: "password")
User.create(username: "Jasmeen", password: "password")
User.create(username: "Youseef", password: "password")

Message.create(body: "I Love U", user_id: 1)
Message.create(body: "Hello everyone", user_id: 2)
Message.create(body: "FIFA world CUP", user_id: 3)
Message.create(body: "IN Qatar", user_id: 4)
Message.create(body: "YUP!!", user_id: 5)