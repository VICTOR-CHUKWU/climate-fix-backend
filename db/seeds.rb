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

post2= user5.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
post1 = user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
post3 = user3.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'url')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://unsplash.com/wallpapers/nature/floral')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1475924156734-496f6cac6ec1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user1.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1490730141103-6cac27aaab94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1431794062232-2a99a5431c6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1470770903676-69b98201ea1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1473773508845-188df298d2d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1420745981456-b95fe23f5753?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')
user2.posts.create!(title: 'thunder storm', description: 'lorem ipsum isakfdfjah', picture: 'https://images.unsplash.com/photo-1499002238440-d264edd596ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')

# firstcomment =user1.comments.create!( post: post1, description: 'this is a great posts by user1')
firstcomment =user5.comments.create!( post: post2, description: 'this is a eat posts by user1')
firstcomment =user1.comments.create!( post: post1, description: 'this is a great posts by user1')
firstcomment =user3.comments.create!( post: post3, description: 'this is a great posts by user1')
# secondcomment =user5.comments.create!( post: post2, description: 'this is a great ')
# user2.posts.Comment.create!( description: 'wow what a post by this user2' )
# user2.posts.comments.create!(description: 'wow what a post by this user2')
# user2.posts.comments.create!(description: 'wow what a post by this user2')
# user1.posts.comments.create!(description: 'this is a great posts by user1')

# sampleAppointments = Appointment.create([
#   {user:@user1, doctor: sampleDoctors[0], time: Time.now, date: '24-02-2022'},
#   {user:@user1, doctor: sampleDoctors[1], time: Time.now, date: '25-02-2022'},
# ])