# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:œ  œ œ
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Van.destroy_all
puts "Destroying Vans and Booking..."

# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Blop", category: "volkswagen", description: "Un super van pour vos balade champêtre...", date: Date.today - rand(100).years, price: 340, location: "Marseille", image_url: "https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1308&q=80", user: User.first)
# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Wonderwoman", category: "volkswagen", description: "Van completement rose, funky, disco ! Un va pour faire la fête en pleine nature", date: Date.today - rand(100).years, price: 340, location: "La Ciotat", image_url: "https://images.unsplash.com/photo-1583797227225-4233106c5a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", user: User.first)
# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Tarzan", category: "volkswagen", description: "Ohiiiihhiiiouaaaaaa le roi de la jungle et de la forêt c'est moiiiiiiii !!!!!", date: Date.today - rand(100).years, price: 340, location: "Montpellier", image_url: "https://images.unsplash.com/photo-1516939884455-1445c8652f83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", user: User.first)
# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Spiderman", category: "4x4", description: "Une toile, un collant rouge et un masque so sexy ! Voici le van parfait pour être un vrai de vrai héro !", date: Date.today - rand(100).years, price: 340, location: "Marseille", image_url: "https://images.unsplash.com/photo-1534540378968-85a7b8fde19f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80", user: User.first)
# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Le Manon", category: "4x4", description: "Bouleversant, aimant la nature et ayant pour horreur les Merges ! Le van que tu doit choisir si tu adore les pull request et les push sur Heroku !!", date: Date.today - rand(100).years, price: 340, location: "Montpellier", image_url: "https://images.unsplash.com/photo-1534437401535-8cdaa9b93ae4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1868&q=80", user: User.first)
# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Le Max", category: "4x4", description: "Competitif, d'une force de frappe incroyable ( sur son clavier ahaah) ! Le Max est un Van doté une methodo agile ", date: Date.today - rand(100).years, price: 340, location: "Paris", image_url: "https://images.unsplash.com/photo-1579111178558-53d465a5d162?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80", user: User.first)
# Van.create!(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir", seat: 5, name: "Le Romain", category: "camper", description: "Monster truck tellement beau !!! t'as vu ! alors n'hésite surtout pas à reserver tes vacances avec moi !!! Sentation garantie....", date: Date.today - rand(100).years, price: 340, location: "Paris", image_url: "https://images.unsplash.com/photo-1579111178558-53d465a5d162?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80", user: User.first)

# puts "Vans created ! !"





van = Van.new(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir",
              seat: 5,
              name: "Blop",
              category: "volkswagen",
              description: "Un super van pour vos balade champêtre...",
              date: Date.today - rand(100).years,
              price: 340,
              location: "Marseille",
              user: User.first)


file = URI.open("https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1308&q=80")
van.photo.attach(io: file, filename: 'blop.png', content_type: 'image/png')
van.save


van = Van.new(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir",
              seat: 5,
              name: "Wonderwoman",
              category: "volkswagen",
              description: "Van completement rose, funky, disco ! Un va pour faire la fête en pleine nature",
              date: Date.today - rand(100).years,
              price: 340,
              location: "Marseille",
              user: User.first)


file = URI.open("https://images.unsplash.com/photo-1583797227225-4233106c5a2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
van.photo.attach(io: file, filename: 'wonderwoman.png', content_type: 'image/png')
van.save

van = Van.new(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir",
              seat: 5,
              name: "BIP BIP",
              category: "volkswagen",
              description: "Ohiiiihhiiiouaaaaaa le roi de la jungle et de la forêt c'est moiiiiiiii !!!!!",
              date: Date.today - rand(100).years,
              price: 340,
              location: "Marseille",
              user: User.first)


file = URI.open("https://images.unsplash.com/photo-1516939884455-1445c8652f83?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
van.photo.attach(io: file, filename: 'BIPBIP.png', content_type: 'image/png')
van.save

van = Van.new(equipement: "Douche, eau potable, electricité, toilette dans la nature, lampe U.V pour bronzé,et plains d'autres truc à découvrir",
              seat: 5,
              name: "Le Manon",
              category: "volkswagen",
              description: "Bouleversant, aimant la nature et ayant pour horreur les Merges ! Le van que tu doit choisir si tu adore les pull request et les push sur Heroku !!!!!!!",
              date: Date.today - rand(100).years,
              price: 340,
              location: "Marseille",
              user: User.first)


file = URI.open("https://images.unsplash.com/photo-1579111178558-53d465a5d162?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80")
van.photo.attach(io: file, filename: 'ByPBIP.png', content_type: 'image/png')
van.save
