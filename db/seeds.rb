# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "🌱 Seeding Begins!"

User.create(email: 'user1@example.com', username: 'user1', password: 'password1')
User.create(email: 'user2@example.com', username: 'user2', password: 'password2')
User.create(email: 'user3@example.com', username: 'user3', password: 'password3')

Job.create(title: 'Software Engineer', description: 'Join our development team.')
Job.create(title: 'Data Analyst', description: 'Analyzing data for insights.')
Job.create(title: 'Product Manager', description: 'Leading product development.')

Profile.create(user: User.first, first_name: 'John', last_name: 'Doe', bio: 'Software Engineer', resume_link: 'john_resume.pdf')
Profile.create(user: User.second, first_name: 'Alice', last_name: 'Smith', bio: 'Data Analyst', resume_link: 'alice_resume.pdf')
Profile.create(user: User.third, first_name: 'Bob', last_name: 'Johnson', bio: 'Product Manager', resume_link: 'bob_resume.pdf')

JobApplication.create(user: User.first, job: Job.first)
JobApplication.create(user: User.first, job: Job.second)
JobApplication.create(user: User.second, job: Job.second)
JobApplication.create(user: User.third, job: Job.third)

puts "✅ Done seeding! ..."



#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
