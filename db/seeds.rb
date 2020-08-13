# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:œ  œ œ
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all

Van.destroy_all
puts "Destroying vans..."

Van.create!(seat: 5, name: "Vanlife1", category: "volkswagen", description: "Super old school", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153433/5eb02b10578532705444dab8_svfz0n.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife2", category: "volkswagen", description: "Van completement rose", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153322/sportsmobile-classic-4x4_n4ywe6.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife3", category: "volkswagen", description: "Le van de ta vie !!!", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153190/camperman-campervan-hire-australia-east-coast-budget-backpacker-sydney-cairns_gjr2lm.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife4", category: "4x4", description: "Super van", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153091/e-bulli-3_u1ivsv.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife5", category: "4x4", description: "WonderWovan", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153091/e-bulli-3_u1ivsv.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife6", category: "4x4", description: "Van verdoyant", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153091/e-bulli-3_u1ivsv.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife7", category: "camper", description: "Monster truck", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153091/e-bulli-3_u1ivsv.jpg", user: User.first)
Van.create!(seat: 5, name: "Vanlife8", category: "camper", description: "VAn VROOM VROOM", date: Date.today - rand(100).years, price: 340, location: "Marseille", photo: "https://res.cloudinary.com/pm-interview/image/upload/v1597153091/e-bulli-3_u1ivsv.jpg", user: User.first)

puts "Vans created ! !"
