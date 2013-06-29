# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(name: 'Jayne', password: 'Password123', password_confirmation: 'Password123', email: 'jayneyjang@example.com')
u1.update_attribute(:admin, true)

u2 = User.create(name: 'Leah', password: 'Password123', password_confirmation: 'Password123', email: 'leah@example.com')
u2.update_attribute(:admin, true)

u3 = User.create(name: 'Dorian', password: 'Password123', password_confirmation: 'Password123', email: 'dorian@example.com')

p1 = Post.create(title: 'San Diego is Sunny', body: 'Have you ever visited this awesome place?', author: 'Jayne', category: 'Food')
p1.update_attribute(:user_id, 1)