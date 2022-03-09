#seed(default/test) data for users
User.create!(name: "test1", email: "one@test.com", password: "password")
User.create!(name: "test2", email: "two@test.com", password: "password")

#seed(default/test) data for pets
Pet.create!(name: "Turkey", gender: "male", description: "A tabby cat that likes to do nothing more than to annoy his owner and beg for attention. He loves to sleep and cuddle ontop of people.", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-sLgf6bCvUFxwQ_5TnXxSDeK-5dug_kP5Nw&usqp=CAU", likes: "eating, sleeping", user_id: 2, dislikes: "loud noises, dogs", fixed: true)
Pet.create!(name: "fatsy", gender: "male", description: "A grey cat that likes to do nothing more than to eat sleep and scracth the corners on objects.", img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-sLgf6bCvUFxwQ_5TnXxSDeK-5dug_kP5Nw&usqp=CAU", likes: "eating, sleeping", user_id: 1, dislikes: "loud noises, diet food", fixed: true)

#seed(default/test) data for conversations
Conversation.create!(recipient: 1, sender: 2)

#seed(default/test) data for messages
Message.create!(conversation_id: 1, content: "message 1", user_id: 1)
Message.create!(conversation_id: 1, content: "message 2", user_id: 2)
Message.create!(conversation_id: 1, content: "message 3", user_id: 1)
Message.create!(conversation_id: 1, content: "message 4", user_id: 2)
Message.create!(conversation_id: 1, content: "message 5", user_id: 1)
Message.create!(conversation_id: 1, content: "message 6", user_id: 2)