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
User.create!(first_name: "Paulette", last_name: "Dumontelle", email: "Pualette@gmail.com", password: "foobar", password_confirmation: "foobar", username: "Paupaulette", company: "PauletteCompagy")
puts "Generate a main sample exercise."
Exercice.create!(name: "Bench Press", description: "Lie on your back on a flat bench. Grip the bar with your hands slightly wider than shoulder-width apart, palms facing feet. Lower the bar slowly until it touches your middle chest. Pause for a second, then press the bar explosively back to the starting position.", duration: 3)
Exercice.create!(name: "Position du chat assis", description: "Vous positionner à quatre pattes. Placer les mains bien à plat au sol, aligner les épaules avec les poignets et les genoux avec les hanches. Prendre une profonde inspiration, relever la tête vers le ciel et créer un creux dans le bas de votre dos.", duration: 2)
Exercice.create!(name: "shadow boxing", description: "Le shadowboxing est un excellent moyen de se concentrer sur la forme. Il n’est pas nécessaire de donner des coups de poing rapides au sac ou à un adversaire, et rien ne retournera les coups. Vous pouvez donc vous concentrer sur votre forme en pratiquant votre position et en développant de solides habitudes de combat.", duration: 4)

# puts "Generate a category."
# Categorie.create!(name: "Assouplissement")
# Categorie.create!(name: "Renforcement musculaire")
# Categorie.create!(name: "Cardio")
# puts "Generate a subscription."
# Subscription.create!(frequency: 1)
puts "finished"
