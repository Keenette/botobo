# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Exercice.destroy_all
Categorie.destroy_all
Subscription.destroy_all
puts "Generate a main sample user."
User.create!(first_name: "Jean", last_name: "JClaudius", email: "jean@gmail.com", password: "foobar", password_confirmation: "foobar", username: "JeanClaudius", company: "JeanClaudiusCompany")
puts "Generate a main sample exercise."
Exercice.create!(name: "Bench Press", description: "Lie on your back on a flat bench. Grip the bar with your hands slightly wider than shoulder-width apart, palms facing feet. Lower the bar slowly until it touches your middle chest. Pause for a second, then press the bar explosively back to the starting position.", category: "Chest", user_id: 1)
puts "Generate a category."
Category.create!(name: "Assouplissement")
Category.create!(name: "abdominaux")
Category.create!(name: "Musculation")
Category.create!(name: "Biceps")
Category.create!(name: "Triceps")

Puts "Generate a bunch of relationships."
exercices = Exercise.all
exercices.each do |exercice|
  category = Category.find(rand(1..5))
  exercice.categories << category
end
