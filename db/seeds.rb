# Users
User.create(username: "davis", password: "123")
User.create(username: "brian", password: "123")
User.create(username: "lupita", password: "123")
User.create(username: "alex", password: "123")

# Categories
Category.create(name: "RPG")
Category.create(name: "Strategy")
Category.create(name: "Kids")
Category.create(name: "Party")
Category.create(name: "Fantasy")

# Games
a = Game.create(title: "Settlers", description: "a way to ruin friendships", category_id: 2)
b = Game.create(title: "Monopoly", description: "another way to ruin friendships", category_id: 2)
c = Game.create(title: "Connect Four", description: "line up four of your pieces to win", category_id: 3)
d = Game.create(title: "Ride the Bus", description: "fun drinking game", category_id: 4)
e = Game.create(title: "D&D", description: "classic table top game", category_id: 1)
g = Game.create(title: "Game of Thrones", description: "When you play the game of war, you win or you die", category_id: 5)

# Votes
a.votes.create(value: 2, user_id: 1)
b.votes.create(value: 3, user_id: 4)
c.votes.create(value: 4, user_id: 3)
d.votes.create(value: 5, user_id: 1)
e.votes.create(value: 6, user_id: 3)
g.votes.create(value: 1, user_id: 2)

# Comments
Comment.create(body: "this game is fun", user_id: 1, game_id: 1)
Comment.create(body: "bad game", user_id: 1, game_id: 1)
Comment.create(body: "I'm bad at this game", user_id: 3, game_id: 1)

Comment.create(body: "good game", user_id: 2, game_id: 2)

Comment.create(body: "this is cool", user_id: 3, game_id: 3)

Comment.create(body: "fun drinking game", user_id: 4, game_id: 4)

Comment.create(body: "UGH", user_id: 1, game_id: 5)

Comment.create(body: "FUN", user_id: 2, game_id: 6)

# Subscriptions
Subscription.create(user_id: 1, game_id: 1)
Subscription.create(user_id: 1, game_id: 2)
Subscription.create(user_id: 1, game_id: 3)

Subscription.create(user_id: 2, game_id: 4)
Subscription.create(user_id: 2, game_id: 5)
Subscription.create(user_id: 2, game_id: 6)

Subscription.create(user_id: 3, game_id: 1)
Subscription.create(user_id: 3, game_id: 3)
Subscription.create(user_id: 3, game_id: 5)

Subscription.create(user_id: 4, game_id: 2)
Subscription.create(user_id: 4, game_id: 4)
Subscription.create(user_id: 4, game_id: 6)

# Users Following Users
Follow.create(user_id: 1, followed_user_id: 4)
Follow.create(user_id: 1, followed_user_id: 2)
Follow.create(user_id: 1, followed_user_id: 3)

Follow.create(user_id: 2, followed_user_id: 1)
Follow.create(user_id: 2, followed_user_id: 3)
Follow.create(user_id: 2, followed_user_id: 4)

Follow.create(user_id: 3, followed_user_id: 1)
Follow.create(user_id: 3, followed_user_id: 2)
Follow.create(user_id: 3, followed_user_id: 4)

Follow.create(user_id: 4, followed_user_id: 1)
Follow.create(user_id: 4, followed_user_id: 2)
Follow.create(user_id: 4, followed_user_id: 3)