# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning DB...'
User.destroy_all

puts 'Creating users...'
matt = { username: 'Matt', telephone: '0612345678' }
celine = { username: 'Celine', telephone: '0614445678' }

[matt, celine].each { |args| user = User.create!(args); puts "Created #{user.username}" }

puts 'Finished'

puts 'Cleaning DB...'
Animal.destroy_all

puts 'Creating animals...'
rita = { name: 'Rita', address: 'Rue Condorcet', species: 'cat', user_id: User.last.id }
tobby = { name: 'Tobby', address: 'Rue des Martyrs', species: 'dog', user_id: User.first.id }
sparrow = { name: 'Sparrow', address: 'Rue de Verdun', species: 'bird', user_id: User.last.id }

[rita, tobby, sparrow].each { |args| animal = Animal.create!(args); puts "Created #{animal.name}" }

puts 'Finished'
