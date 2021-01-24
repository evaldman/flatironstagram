User.destroy_all
Picture.destroy_all

user1 = User.create(email: "bobby@yahoo.com", username: "bobby123")
user2 = User.create(email: "timmy@yahoo.com", username: "timmy123")
user3 = User.create(email: "teddy@yahoo.com", username: "teddy123")
user4 = User.create(email: "tammy@yahoo.com", username: "tammy123")
user5 = User.create(email: "julia@yahoo.com", username: "julia123")

pictures = [
    {
        image: "https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?cs=srgb&dl=pexels-pixabay-206359.jpg&fm=jpg",
        title: "fall is here",
        user: user1
    },
    {
        image: "https://images.pexels.com/photos/132037/pexels-photo-132037.jpeg?cs=srgb&dl=pexels-pok-rie-132037.jpg&fm=jpg",
        title: "fall is here",
        user: user1
    },
    {
        image: "https://images.pexels.com/photos/371589/pexels-photo-371589.jpeg?cs=srgb&dl=pexels-pixabay-371589.jpg&fm=jpg",
        title: "fall is here",
        user: user2
    },
    {
        image: "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?cs=srgb&dl=pexels-james-wheeler-417074.jpg&fm=jpg",
        title: "fall is here",
        user: user3
    },
    {
        image: "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?cs=srgb&dl=pexels-pixabay-326055.jpg&fm=jpg",
        title: "fall is here",
        user: user3
    }
]


def seed_pics(pic_arr)
    pic_arr.each do |pic|
        Picture.create(pic)
    end
end

seed_pics(pictures)