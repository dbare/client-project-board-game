User.create(username: "davis", password: "123")
User.create(username: "brian", password: "123")

Category.create(name: "cookies")

g = Game.create(title: "Settlers", description: "a way to ruin friendships", category_id: 1)

g.votes.create(value: 1, user_id: 2)

Comment.create(body: "this game is fun", user_id: 1, game_id: 1)

Subscription.create(user_id: 1, game_id: 1)

Follow.create(user_id: 1, followed_user_id: 2)