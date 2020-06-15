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

fridge1 = Fridge.create(url: "https://upload.wikimedia.org/wikipedia/en/2/2d/Blue_Poles_%28Jackson_Pollock_painting%29.jpg")
fridge2 = Fridge.create(url: "https://www.pablopicasso.org/images/paintings/self-portrait.jpg")
fridge3 = Fridge.create(url: "https://upload.wikimedia.org/wikipedia/commons/b/b1/Monet_-_Monets_Garten_in_Giverny.jpg")

user_fridges1 = UserFridge.create(user: user1, fridge: fridge1)
user_fridges2 = UserFridge.create(user: user2, fridge: fridge1)

image1 = Image.create(url: "https://upload.wikimedia.org/wikipedia/en/1/1f/Campbells_Soup_Cans_MOMA.jpg", image_type: "comment", user: user1, fridge: fridge1)
image2 = Image.create(url: "https://d32dm0rphc51dk.cloudfront.net/uvoojg3V0XwrPiBamR2pqQ/large.jpg", image_type: "comment", user: user1, fridge: fridge1)
image3 = Image.create(url: "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=640&height=357&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FXziTbfMVt1ADutuYWig3Jw%2Flarge.jpg", image_type: "comment", user: user2, fridge: fridge1)

comment1 = Comment.create(comment_info: "Comment 1", user: user1, image: image1)