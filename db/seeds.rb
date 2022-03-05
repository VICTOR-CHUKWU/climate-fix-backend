# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: 'Hello', bio: 'courageous')
User.create!(name: 'john', bio: 'faithful')
User.create!(name: 'john doe', bio: 'faithful')
User.create!(name: 'jamws', bio: 'joy')

user1 = User.create!(name: 'jamws', bio: 'joy')

user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')

