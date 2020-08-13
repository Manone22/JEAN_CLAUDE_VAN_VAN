# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:œ  œ œ
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Van.create(seat: 5, name: "Vanlife1", description: "Super old school", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife2", description: "Van completement rose", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife3", description: "Le van de ta vie !!!", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife4", description: "Super van", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife5", description: "WonderWovan", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife6", description: "Van verdoyant", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife7", description: "Monster truck", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)
Van.create(seat: 5, name: "Vanlife8", description: "VAn VROOM VROOM", date: Date.today - rand(100).years, price: 340, location:"Marseille", image_url: "https://unsplash.com/photos/w8CcH9Md4vE", user_id: 1)

Van.create(category: 'Volkswagen')
Van.create(category: 'Camper')
Van.create(category: '4x4')

puts "--------------Le seed a fonctionné---------------"
