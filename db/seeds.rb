# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

u1 = User.create(name: 'Jasper Reed', age: 20, bio: 'love food and sleep', username: 'jasperwreed', email: 'jasperwreed@protonmail.com', password: 'zKRy7')
u2 = User.create(name: 'pete', age: 20, bio: 'food', username: 'petey', email: 'pete@pete.com', password: 'pete2')
u3 = User.create(name: 'pete2', age: 20, bio: 'food', username: 'pe', email: 'pete2@pete.com', password: 'pete2')
u4 = User.create(name: 'pete3', age: 20, bio: 'food', username: 'petey2', email: 'pete3@pete.com', password: 'pete2')
u5 = User.create(name: 'pete4', age: 20, bio: 'food', username: 'pet', email: 'pete23@pete.com', password: 'pete2')


p1 = Post.create(text: 'great day working on my mod 5 project', user_id: User.first.id)
p2 = Post.create(text: 'javascript is more fun than ruby... tell me im wrong, i dare you', user_id: User.first.id)
p3 = Post.create(text: 'feeling confident with reatjs', user_id: User.first.id)
p4 = Post.create(text: 'being stuch in an alert loop >>>', user_id: User.first.id)
p5 = Post.create(text: 'Learning reactjs is a blessing and a curse...', user_id: User.first.id)
p6 = Post.create(text: 'how has programming / coding changed your life?', user_id: User.first.id)
p7 = Post.create(text: 'who wishes javascript had a built in countdown timer function', user_id: User.first.id)
p8 = Post.create(text: 'small win, but still a win... finally had time to work on my personal website', user_id: User.first.id)
p9 = Post.create(text: 'working on connecting javascript with ruby / rails. getting used to going back and fourth between different languages', user_id: User.first.id)
p10 = Post.create(text: 'ready to hoop today', user_id: User.second.id)
p11 = Post.create(text: 'tired... so tired', user_id: User.second.id)
p12 = Post.create(text: 'mcdonalds still have for four for?', user_id: User.second.id)
p13 = Post.create(text: 'MARIO CARTTTTTT', user_id: User.third.id)
p14 = Post.create(text: 'pizza is a vegetable', user_id: User.third.id)
p15 = Post.create(text: 'i want a sandwich', user_id: User.third.id)
p16 = Post.create(text: 'cats own us...', user_id: User.second.id)
p17 = Post.create(text: 'oh yeah', user_id: User.fourth.id)
p18 = Post.create(text: 'there is too much time not to do anything', user_id: User.fourth.id)
p19 = Post.create(text: 'you already know', user_id: User.fifth.id)
p20 = Post.create(text: 'programmer... what can i say', user_id: User.fourth.id)

c1 = Comment.create(text: 'great post!!', post_id: Post.first.id, user_id: User.second.id)

l1 = Like.create(user_id: User.second.id, post_id: Post.first.id)
l2 = Like.create(user_id: User.third.id, post_id: Post.first.id)
l3 = Like.create(user_id: User.fourth.id, post_id: Post.first.id)
l4 = Like.create(user_id: User.fifth.id, post_id: Post.first.id)