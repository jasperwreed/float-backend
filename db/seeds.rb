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

c1 = Comment.create(text: 'great post!!', post_id: Post.first.id, user_id: User.second.id)

l1 = Like.create(count: 1, user_id: User.second.id, post_id: Post.first.id)
l2 = Like.create(count: 1, user_id: User.third.id, post_id: Post.first.id)
l3 = Like.create(count: 1, user_id: User.fourth.id, post_id: Post.first.id)
l4 = Like.create(count: 1, user_id: User.fifth.id, post_id: Post.first.id)