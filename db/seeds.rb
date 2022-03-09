# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Post.destroy_all
User.destroy_all
ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

user2 = User.create!(name: 'Hello', bio: 'courageous')
user3 = User.create!(name: 'john', bio: 'faithful')
user4 = User.create!(name: 'john doe', bio: 'faithful')
user5 = User.create!(name: 'jamws', bio: 'joy')

user1 = User.create!(name: 'jamws', bio: 'joy')

user5.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')

# user1.Post.comments.create!(description: 'this is a great posts by user1')
user2.posts.Comment.create!( description: 'wow what a post by this user2' )
# user2.posts.comments.create!(description: 'wow what a post by this user2')
# user2.posts.comments.create!(description: 'wow what a post by this user2')
# user1.posts.comments.create!(description: 'this is a great posts by user1')