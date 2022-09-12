# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating animals...'
rita = { name: 'Rita', address: 'Rue Condorcet', species: 'cat' }
tobby = { name: 'Tobby', address: 'Rue des Martyrs', species: 'dog' }
sparrow = { name: 'Sparrow', address: 'Rue de Verdun', species: 'bird' }

[rita, tobby, sparrow].each { |args| animal = Animal.create!(args); puts "Created #{animal.name}" }

puts 'Finished'
