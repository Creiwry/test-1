# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.destroy_all
Event.destroy_all

10.times do
  User.create(
    user_name: Faker::Internet.username,
    email: Faker::Internet.email(domain: 'yopmail.com'),
    password: Faker::Internet.password
  )
end

20.times do
  Event.create(
    start_date: Faker::Time.forward,
    price: Faker::Number.within(range: 1..1000),
    duration: Faker::Number.within(range: 60..3000),
    title: Faker::Lorem.words(number: 4),
    description: Faker::Lorem.paragraph,
    location: Faker::Address.city,
    organiser: User.all.sample
  )
end

40.times do
  Participation.create(
    payment_type: Faker::Lorem.words(number: 1),
    participant: User.all.sample,
    event: Event.all.sample
  )
end
