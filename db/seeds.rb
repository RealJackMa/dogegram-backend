# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.destroy_all
Comment.destroy_all

i1 = Image.create(title: "1GB Hello World", likes: 30, url: "https://i.kym-cdn.com/photos/images/facebook/001/853/912/df0.jpg")
i2 = Image.create(title: "Pro Programmer", likes: 42, url: "https://3.bp.blogspot.com/-FAUTU4o90L4/UsbJ31plhGI/AAAAAAAAACg/N2GM5AfI2P0/s1600/doge+wow.png")
i3 = Image.create(title: "git/doge/master", likes: 12, url: "https://camo.githubusercontent.com/aec4c3fc2d674f2a4e90ed9e1413d95f204d7445/687474703a2f2f692e696d6775722e636f6d2f48784839716b612e706e67")
i4 = Image.create(title: "Jack Ma's Profile Pic", likes: 999, url: "https://ih1.redbubble.net/image.859144446.2420/st,small,507x507-pad,600x600,f8f8f8.u2.jpg")
i5 = Image.create(title: "Squirtle Spies", likes: 5, url: "https://devhumor.com/content/uploads/images/May2020/hello_world.jpg")
i6 = Image.create(title: "Good Morning", likes: 69, url: "https://i.insider.com/52b2df16eab8ea421ff15454?width=600&format=jpeg&auto=webp")

c1 = Comment.create(content: "Such Wow. Very doge.", image: i1)
c2 = Comment.create(content: "How did you make the bubbly background?", image: i1)
c3 = Comment.create(content: "My Hello World is using 2GB...", image: i1)
c4 = Comment.create(content: "Many bug, much wow, so JavaScript.", image: i2)
c5 = Comment.create(content: "This doge has better programming skills that I do.", image: i2)
c6 = Comment.create(content: "Git status: 9408450 lines deleted (-).", image: i3)
c7 = Comment.create(content: "Who took a screenshot of my terminal?", image: i3)
c8 = Comment.create(content: "Silly Jack.", image: i4)
c9 = Comment.create(content: "Bruh.", image: i4)
c10 = Comment.create(content: "Dogegram security has been compromised!", image: i5)
c11 = Comment.create(content: "I don't think they have ears.", image: i5)
c12 = Comment.create(content: "I think this is photoshoped from Teletubbies.", image: i6)