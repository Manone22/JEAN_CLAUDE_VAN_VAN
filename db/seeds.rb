# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Van.destroy_all
puts "Destroying vans..."

Van.create!(seat: 5, name: "Vanlife1", category:"volkswagen", description: "Super old school", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife2", category:"volkswagen", description: "Van completement rose", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife3", category:"volkswagen", description: "Le van de ta vie !!!", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife4", category:"4x4", description: "Super van", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife5", category:"4x4", description: "WonderWovan", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife6", category:"4x4", description: "Van verdoyant", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife7", category:"camper", description: "Monster truck", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)
Van.create!(seat: 5, name: "Vanlife8", category:"camper", description: "VAn VROOM VROOM", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user: User.first)

puts "Vans created !"
