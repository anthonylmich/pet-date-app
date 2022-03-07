# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: "test1", email: "one@test.com", password: "password")
User.create!(name: "test2", email: "two@test.com", password: "password")

Pet.create!(name: "Turkey", gender: "male", description: "A tabby cat that likes to do nothing more than to annoy his owner and beg for attention. He loves to sleep and cuddle ontop of people.", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-sLgf6bCvUFxwQ_5TnXxSDeK-5dug_kP5Nw&usqp=CAU", likes: "eating, sleeping", dislikes: "loud noises, dogs" fixed: true)
Pet.create!(name: "fatsy", gender: "male", description: "A grey cat that likes to do nothing more than to eat sleep and scracth the corners on objects.", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-sLgf6bCvUFxwQ_5TnXxSDeK-5dug_kP5Nw&usqp=CAU", likes: "eating, sleeping", dislikes: "loud noises, diet food" fixed: true)