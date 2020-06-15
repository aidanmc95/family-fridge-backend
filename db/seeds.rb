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
user4 = User.create(username: "mrsteven", name: "Steven")

fridge1 = Fridge.create(url: "https://upload.wikimedia.org/wikipedia/en/2/2d/Blue_Poles_%28Jackson_Pollock_painting%29.jpg")
fridge2 = Fridge.create(url: "https://www.pablopicasso.org/images/paintings/self-portrait.jpg")
fridge3 = Fridge.create(url: "https://upload.wikimedia.org/wikipedia/commons/b/b1/Monet_-_Monets_Garten_in_Giverny.jpg")
fridge4 = Fridge.create(url: "https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1", name: "Parsons's Family")

user_fridges1 = UserFridge.create(user: user1, fridge: fridge1)
user_fridges2 = UserFridge.create(user: user2, fridge: fridge1)
user_fridges3 = UserFridge.create(user: user4, fridge: fridge4)

image1 = Image.create(url: "https://upload.wikimedia.org/wikipedia/en/1/1f/Campbells_Soup_Cans_MOMA.jpg", image_type: "comment", user: user1, fridge: fridge1)
image2 = Image.create(url: "https://d32dm0rphc51dk.cloudfront.net/uvoojg3V0XwrPiBamR2pqQ/large.jpg", image_type: "comment", user: user1, fridge: fridge1)
image3 = Image.create(url: "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=640&height=357&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FXziTbfMVt1ADutuYWig3Jw%2Flarge.jpg", image_type: "comment", user: user2, fridge: fridge1)
image4 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/30123768_1946101515440172_5081895919847211008_n.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_oc=AQkWta8anPUSdE3nxekYUDteDQzif9aIg-tCsE0OowrExa898a8nSTSizUVlQxJQ6xyiE4zqC9YVrUH_qcYtgCbT&_nc_ht=scontent-lax3-1.xx&oh=e1e926c96b8cabd2e1091b76502bb385&oe=5F0D0ED2", image_type: "comment", user: user4, fridge: fridge4)
image5 = Image.create(url: "https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/40387435_2144041418979513_3359913779918798848_n.jpg?_nc_cat=106&_nc_sid=8bfeb9&_nc_oc=AQn1aDp2TsBNSu2BknMKG6vul21EvC2WJht1RQ8upRoP5IbEEo7evbgvdRcBb5hJ9Dw22XFutSpOfgCQasPE_FdR&_nc_ht=scontent-lax3-2.xx&oh=183732a01ad4706e0a0b46ca2c19d960&oe=5F0E2344", image_type: "comment", user: user4, fridge: fridge4)
image1 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t31.0-8/15800495_1445496132167382_4734423147963708548_o.jpg?_nc_cat=108&_nc_sid=8bfeb9&_nc_oc=AQlf28JoSuPUnPo5a4RYgbe7052t5FhLT7S5cmuerLTfXfP0WKFTYZNP6Rri9qY9WVNIamND77bD4jjl6AYk3Qcn&_nc_ht=scontent-lax3-1.xx&oh=d26fff8841e1fb8385136f43c9c046e2&oe=5F0E480D", image_type: "comment", user: user4, fridge: fridge4)



comment1 = Comment.create(comment_info: "Comment 1", user: user1, image: image1)