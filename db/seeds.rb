# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.destroy_all
Comment.destroy_all

i1 = Image.create(title: "Round Doge", likes: 30, url: "https://images-eu.ssl-images-amazon.com/images/I/81-yKbVND-L.png")
i2 = Image.create(title: "Normal Doge", likes: 2, url: "https://pbs.twimg.com/profile_images/378800000822867536/3f5a00acf72df93528b6bb7cd0a4fd0c.jpeg")

c1 = Comment.create(content: "Wow!", image: i1)
c2 = Comment.create(content: "Very Nice!", image: i1)
c3 = Comment.create(content: "Doge!", image: i1)
c4 = Comment.create(content: "Very Doge!", image: i2)