# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'shrutika', password: 'shrutika')
User.create(username: 'shraddha', password: 'shraddha')
User.create(username: 'aniket', password: 'aniket')
User.create(username: 'vaibhav', password: 'vaibhav')

Chat.create(body: 'This is a message', user_id: User.last)
Chat.create(body: 'Message', user_id: User.last)
