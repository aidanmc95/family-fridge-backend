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
amber = User.create(username: "catfan22", name: "Amber")
ashley = User.create(username: "nursegirl57", name: "Ashley")
shannon = User.create(username: "historynerd90", name: "Shannon")
steve = User.create(username: "sirsteve", name: "Steve")
patty = User.create(username: "peppers225", name: "Patty")

fridge1 = Fridge.create(url: "https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1", name: "Art")
fridge2 = Fridge.create(url: "https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1", name: "Piggy")
fridge3 = Fridge.create(url: "https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1", name: "Happy")
fridge4 = Fridge.create(url: "https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1", name: "Parsons's Family")

user_fridges1 = UserFridge.create(user: user1, fridge: fridge1)
user_fridges2 = UserFridge.create(user: user2, fridge: fridge1)
user_fridges3 = UserFridge.create(user: user4, fridge: fridge4)
user_fridges4 = UserFridge.create(user: amber, fridge: fridge4)
user_fridges5 = UserFridge.create(user: ashley, fridge: fridge4)
user_fridges6 = UserFridge.create(user: shannon, fridge: fridge4)
user_fridges7 = UserFridge.create(user: steve, fridge: fridge4)
user_fridges8 = UserFridge.create(user: patty, fridge: fridge4)



image1 = Image.create(url: "https://upload.wikimedia.org/wikipedia/en/1/1f/Campbells_Soup_Cans_MOMA.jpg", image_type: "image", user: user1, fridge: fridge1, description: "this is soup")
image2 = Image.create(url: "https://d32dm0rphc51dk.cloudfront.net/uvoojg3V0XwrPiBamR2pqQ/large.jpg", image_type: "image", user: user1, fridge: fridge1, description: "art")
image3 = Image.create(url: "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=640&height=357&quality=80&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FXziTbfMVt1ADutuYWig3Jw%2Flarge.jpg", image_type: "image", user: user2, fridge: fridge1, description: "lines on a page")
image4 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/30123768_1946101515440172_5081895919847211008_n.jpg?_nc_cat=104&_nc_sid=8bfeb9&_nc_oc=AQkWta8anPUSdE3nxekYUDteDQzif9aIg-tCsE0OowrExa898a8nSTSizUVlQxJQ6xyiE4zqC9YVrUH_qcYtgCbT&_nc_ht=scontent-lax3-1.xx&oh=e1e926c96b8cabd2e1091b76502bb385&oe=5F0D0ED2", image_type: "image", user: user4, fridge: fridge4, name: "Wow Egypt!", description: "This place is cooler than Colton's gaming chair!!")
image5 = Image.create(url: "https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/40387435_2144041418979513_3359913779918798848_n.jpg?_nc_cat=106&_nc_sid=8bfeb9&_nc_oc=AQn1aDp2TsBNSu2BknMKG6vul21EvC2WJht1RQ8upRoP5IbEEo7evbgvdRcBb5hJ9Dw22XFutSpOfgCQasPE_FdR&_nc_ht=scontent-lax3-2.xx&oh=183732a01ad4706e0a0b46ca2c19d960&oe=5F0E2344", image_type: "image", user: user4, fridge: fridge4, name: "Im cool", description: "Look at me monkey-ing around lolz.")
image6 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t31.0-8/15800495_1445496132167382_4734423147963708548_o.jpg?_nc_cat=108&_nc_sid=8bfeb9&_nc_oc=AQlf28JoSuPUnPo5a4RYgbe7052t5FhLT7S5cmuerLTfXfP0WKFTYZNP6Rri9qY9WVNIamND77bD4jjl6AYk3Qcn&_nc_ht=scontent-lax3-1.xx&oh=d26fff8841e1fb8385136f43c9c046e2&oe=5F0E480D", image_type: "image", user: user4, fridge: fridge4, name: "Happy 2020", description: "Maybe 2021 will be better? I hope?")
image7 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/60645201_2816755181732762_6162696466763612160_n.jpg?_nc_cat=109&_nc_sid=cdbe9c&_nc_oc=AQlIdLRf6kPF72shs6j-QBshwnmjJLobt0OBDkM0iCRFH0JIP8o2c5P3OOZ-wy0oSia7L8FATCz63q--pSPBU0na&_nc_ht=scontent-lax3-1.xx&oh=cc3980e34a9984735fc247e788ad2659&oe=5F116734", image_type: "image", user: amber, fridge: fridge4, name: "Sports!", description: "We did so darn good you wouldnt believe omg we are awesome")
image8 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/80880438_10156847023797913_523356904777318400_o.jpg?_nc_cat=103&_nc_sid=730e14&_nc_oc=AQn6aW9Zzx2jjmELeVbbVfo9lIEHK8UEHIjPWZ01_NMjhdGhNO7moU90Q4Somn_EAcLEjo3TxZSzOD0pdebWQYH9&_nc_ht=scontent-lax3-1.xx&oh=77b44bf7c9a40a98862899441864c4ad&oe=5F0FE408", image_type: "image", user: ashley, fridge: fridge4, name: "Mexico", description: "This is so old, like, at least 20 years old. I think it may techinically be an antique. thoughts?")
image9 = Image.create(url: "https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/98599510_10106210169512868_2649876413678616576_n.jpg?_nc_cat=107&_nc_sid=8bfeb9&_nc_oc=AQmD1zfsDZjarH_hkLcnrg_SxFldZ7weS5yb1b7hBdwSIs1Az-9sfONjXosBJKqbc4-HNuuFWGmldvcO27ykRfI0&_nc_ht=scontent-lax3-2.xx&oh=8a5123caef680352ad96d881e2abd45f&oe=5F10D427", image_type: "image", user: shannon, fridge: fridge4, name: "Tiny Man", description: "Look at this small person I found?!?!")
image10 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-0/c17.0.206.206a/p206x206/37978045_10217930052069074_1324787249476272128_n.jpg?_nc_cat=105&_nc_sid=da31f3&_nc_oc=AQnsQJeOxST8zpMRPqdoOEqB7PAX7OtgODcX-uAuZ9Xxq1xFuSn7tY8jtNClCMTApDOw4mSnLQxvGRSr76pu-LrO&_nc_ht=scontent-lax3-1.xx&oh=d77f1e69fa87819e449ac9fb78a86e0d&oe=5F0F2821", image_type: "image", user: steve, fridge: fridge4, name: "Water?", description: "Why are my clothes so wet")
image11 = Image.create(url: "https://scontent-lax3-1.xx.fbcdn.net/v/t1.0-9/68690757_10220132410879867_4306520281284870144_n.jpg?_nc_cat=109&_nc_sid=8bfeb9&_nc_oc=AQmaXdRY5J8iAFt72_N8Ry4Wj-dcgWod4kgeTTpWhIvlAN4_nI3FqEUqWAwRBIqopFssAaW1VGZdn92HEU8pmHZX&_nc_ht=scontent-lax3-1.xx&oh=9c5b263581cfda6602f781cb194987dd&oe=5F0E8838", image_type: "image", user: patty, fridge: fridge4, name: "Grandma", description: "Im going to be a granny!")



comment1 = Comment.create(comment_info: "Steven: First shower in a while I bet.", user: user4, image: image10)
comment2 = Comment.create(comment_info: "Ashley: I want one as a pet awww!", user: ashley, image: image5)
comment3 = Comment.create(comment_info: "Shannon: Go you guys!!", user: shannon, image: image7)
comment4 = Comment.create(comment_info: "Patty: Did you win?", user: patty, image: image7)
comment5 = Comment.create(comment_info: "Amber: Nope we lost!", user: amber, image: image7)
comment6 = Comment.create(comment_info: "Ashley: yeah 2020 sucks I want to just skip it.", user: ashley, image: image6)
comment7 = Comment.create(comment_info: "Shannon: More importantly, I'm a mom!", user: shannon, image: image11)
comment8 = Comment.create(comment_info: "Steve: Wow and he's already taller than me!", user: steve, image: image9)

justin_fridge = Fridge.create(url: "https://c.shld.net/rpx/i/s/i/spin/10109385/prod_22969766112?hei=333&wid=333&op_sharpen=1", name: "Justin's Fridge")

user_fridges3 = UserFridge.create(user: user4, fridge: justin_fridge)
user_fridges4 = UserFridge.create(user: amber, fridge: justin_fridge)
user_fridges5 = UserFridge.create(user: ashley, fridge: justin_fridge)
user_fridges6 = UserFridge.create(user: shannon, fridge: justin_fridge)
user_fridges7 = UserFridge.create(user: steve, fridge: justin_fridge)
user_fridges8 = UserFridge.create(user: patty, fridge: justin_fridge)

justin_image4 = Image.create(url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t31.0-8/19575101_10155289409847293_7036117665803227762_o.jpg?_nc_cat=111&_nc_sid=174925&_nc_ohc=uZ3S1Im-L3QAX80bxA1&_nc_ht=scontent.fsjc1-3.fna&oh=a78c7d89d8ca5502bd77305ce008ea23&oe=5F1119D5", image_type: "image", user: user4, fridge: justin_fridge, name: "Handsome Devil", description: "Look At that Face")
justin_image5 = Image.create(url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t1.0-9/11407128_10153039769772293_4136483679835436473_n.jpg?_nc_cat=101&_nc_sid=174925&_nc_ohc=0c61AWnFTG0AX8JgkWB&_nc_ht=scontent.fsjc1-3.fna&oh=d0a6de8bd3d20a5a2069b064bb3b338b&oe=5F0F84BA", image_type: "image", user: user4, fridge: justin_fridge, name: "Life", description: "Just another day in the Life")
justin_image6 = Image.create(url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t1.0-9/1004604_10151542662002293_85613725_n.jpg?_nc_cat=107&_nc_sid=19026a&_nc_ohc=QhVRLU2Q5GgAX807Zge&_nc_ht=scontent.fsjc1-3.fna&oh=171ff363ae09eb83692a8962a6a78773&oe=5F1072EE", image_type: "image", user: user4, fridge: justin_fridge, name: "Art", description: "Dog")
justin_image7 = Image.create(url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t31.0-8/472207_10150700856212293_1142694800_o.jpg?_nc_cat=107&_nc_sid=cdbe9c&_nc_ohc=bhy8xCWK6SsAX-h_QO4&_nc_ht=scontent.fsjc1-3.fna&oh=258bf4f39ab0b3b263f86ae73f8a1958&oe=5F10A81D", image_type: "image", user: amber, fridge: justin_fridge, name: "Lucy", description: "Isnt she cute")
justin_image8 = Image.create(url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t1.0-9/427700_10150595186557293_1189056191_n.jpg?_nc_cat=106&_nc_sid=de6eea&_nc_ohc=N5QaxIkzkiQAX_UJ9Jr&_nc_ht=scontent.fsjc1-3.fna&oh=54c79c6f125b9f01ee8bdb5e755b230c&oe=5F10B4C0", image_type: "image", user: ashley, fridge: justin_fridge, name: "Muggin", description: "Watchout or You are Next")
justin_image9 = Image.create(url: "https://scontent-sea1-1.xx.fbcdn.net/v/t31.0-8/23405708_10156957632687293_3373541406357689996_o.jpg?_nc_cat=105&_nc_sid=174925&_nc_ohc=oIa-RiIZ5GcAX89NscT&_nc_ht=scontent-sea1-1.xx&oh=e3d856aafce54a45aa076be040ba2ad1&oe=5F0FD0D0", image_type: "image", user: shannon, fridge: justin_fridge, name: "Tiny Man", description: "Look at this small person I found?!?!")
justin_image10 = Image.create(url: "https://scontent-sea1-1.xx.fbcdn.net/v/t31.0-8/14114882_10154074765607293_7082549712775285692_o.jpg?_nc_cat=104&_nc_sid=19026a&_nc_ohc=d0MMrGuFUcUAX8m50kA&_nc_ht=scontent-sea1-1.xx&oh=90585ad9141161a82e5826e049e2f918&oe=5F0F9532", image_type: "image", user: steve, fridge: justin_fridge, name: "Order Up", description: "Melted Chocolate, Stumptown Coffee, Jamberry Crisp, Salted Carmel, Vanilla Bean, Vegan Raspberry Coconut")
justin_image11 = Image.create(url: "https://scontent-sea1-1.xx.fbcdn.net/v/t31.0-8/53141_10151121697627293_936269447_o.jpg?_nc_cat=109&_nc_sid=19026a&_nc_ohc=Fa_rKaXHhUQAX8tVEL-&_nc_ht=scontent-sea1-1.xx&oh=54c2bfac2f0210e45ed6b607b500560e&oe=5F102FC6", image_type: "image", user: patty, fridge: justin_fridge, name: "Knock Knock", description: "Clown")
justin_image12 = Image.create(url: "https://scontent-sea1-1.xx.fbcdn.net/v/t1.0-9/1524795_10151918520882293_369009921_n.jpg?_nc_cat=103&_nc_sid=174925&_nc_ohc=j3CmnuWshOgAX_vt3z4&_nc_ht=scontent-sea1-1.xx&oh=e80b7ed0f735f992e646772e8df12daa&oe=5F10D6DF", image_type: "image", user: patty, fridge: justin_fridge, name: "Hi", description: "Look Up there")
justin_image13 = Image.create(url: "https://scontent.fsjc1-3.fna.fbcdn.net/v/t1.0-9/44707092_10158214548382293_4277120929496039424_n.jpg?_nc_cat=109&_nc_sid=09cbfe&_nc_ohc=iqwR1j_s-owAX_HFXuB&_nc_ht=scontent.fsjc1-3.fna&oh=c3ecf93237e79be3e1ef2db718ffbffd&oe=5F116704", image_type: "image", user: patty, fridge: justin_fridge, name: "Serious", description: "“Okay can you try being serious?” Stevie Antoniou 📸")