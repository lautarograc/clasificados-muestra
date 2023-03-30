# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

electronics = Category.new(name: "Electronics")
electronics.save!
computers = electronics.children.new(name: "Computers")
computers.save!
clasificados_1 =
  Site.create(name: "Clasificados 1", url: "https://clasificados1.com")

clasificados_1.categories << electronics
clasificados_1.categories << computers
