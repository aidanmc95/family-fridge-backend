# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

user1 = User.create(username: "aidanmc95", name: "Aidan")
user2 = User.create(username: "aidanmc96", name: "Aidan")
user3 = User.create(username: "aidanmc97", name: "Aidan")

fridge1 = Fridge.create(url: "fridge 1")
fridge2 = Fridge.create(url: "fridge 2")
fridge3 = Fridge.create(url: "fridge 3")

user_fridges1 = UserFridge.create(user_id: user1, fridge_id: fridge1)
user_fridges2 = UserFridge.create(user_id: user2, fridge_id: fridge1)

image1 = Image.create(url: "image1", comment_type: "comment", user: user1, fridge: fridge1)
image2 = Image.create(url: "image2", comment_type: "comment", user: user1, fridge: fridge1)
image3 = Image.create(url: "image3", comment_type: "comment", user: user2, fridge: fridge1)

comment1 = Comment.create(comment: "Comment 1", user: user1, image: image1)