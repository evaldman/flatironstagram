User.destroy_all
Picture.destroy_all
Tag.destroy_all
PictureTag.destroy_all
Comment

## users ##
user1 = User.create(email: "bobby@yahoo.com", username: "bobby123")
user2 = User.create(email: "timmy@yahoo.com", username: "timmy123")
user3 = User.create(email: "teddy@yahoo.com", username: "teddy123")
user4 = User.create(email: "tammy@yahoo.com", username: "tammy123")
user5 = User.create(email: "julia@yahoo.com", username: "julia123")

## pictures ##

pic1 = Picture.create(image: "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?cs=srgb&dl=pexels-pixabay-206359.jpg&fm=jpg", title: "snowy pier", user: user1)
pic2 = Picture.create(image: "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?cs=srgb&dl=pexels-pok-rie-132037.jpg&fm=jpg", title: "lakeside pier", user: user1)
pic3 = Picture.create(image: "https://images.pexels.com/photos/371589/pexels-photo-371589.jpeg?cs=srgb&dl=pexels-pixabay-371589.jpg&fm=jpg", title: "snowy mountains", user: user2)
pic4 = Picture.create(image: "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?cs=srgb&dl=pexels-james-wheeler-417074.jpg&fm=jpg", title: "red rocks", user: user3)
pic5 = Picture.create(image: "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?cs=srgb&dl=pexels-pixabay-326055.jpg&fm=jpg", title: "butterflies", user: user3)

## tags ##
tag1 = Tag.create(name: "mountains")
tag2 = Tag.create(name: "nature")
tag3 = Tag.create(name: "lakes")
tag4 = Tag.create(name: "winter")
tag5 = Tag.create(name: "trees")

## pic tags ##
pictag1 = PictureTag.create(picture: pic1, tag: tag1)
pictag2 = PictureTag.create(picture: pic1, tag: tag4)
pictag3 = PictureTag.create(picture: pic1, tag: tag3)
pictag4 = PictureTag.create(picture: pic2, tag: tag2)
pictag5 = PictureTag.create(picture: pic2, tag: tag3)

## comments ##
comment1 = Comment.create(content: "Love this!!", picture: pic1, user: user1)
comment2 = Comment.create(content: "Awesome!", picture: pic1, user: user2)
comment3 = Comment.create(content: "Great pic!!!", picture: pic1, user: user3)
comment4 = Comment.create(content: "Wow wow wow", picture: pic2, user: user4)
comment5 = Comment.create(content: "So beautiful!!", picture: pic3, user: user1)

