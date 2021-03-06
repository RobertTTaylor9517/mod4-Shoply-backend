# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Product.destroy_all
User.destroy_all
Review.destroy_all




10.times do
    Product.find_or_create_by(name: Faker::Food.vegetables,price: rand(20), category: 'food', description: Faker::Food.description, img: "https://media.gettyimages.com/photos/different-types-of-food-on-rustic-wooden-table-picture-id861188910?s=2048x2048", quantity: 20)
end

Product.find_or_create_by(name:"Reebok Women's Classic Renaissance Sneaker", price: 40, category: 'clothing', description: "Classic lace-up sneaker in faux leather featuring tonal overlays and brand callouts at tongue, sides, and counter", img: "https://cdn.runrepeat.com/i/reebok/25835/reebok-women-s-cl-renaissance-fashion-sneaker-white-steel-4-5-uk-women-s-white-steel-605a-1786277-600.jpg", quantity: 15)
Product.find_or_create_by(name: "Mens Classic Dress Socks Casual Formal Business Work Cotton Crew Socks", price: 6, category: 'clothing', description: "SOLID BLACK DRESS SOCKS - Vintage black colored socks. Go great with your athletic shoes, sneakers, boots, dress shoes, etc.", img: "https://images-na.ssl-images-amazon.com/images/I/61g4xD0tKXL._AC_UX679_.jpg", quantity: 5)
Product.find_or_create_by(name: "Columbia Men's Ascender Softshell Jacket, Water & Wind Resistant", price: 40, category: 'clothing', description: "Wind- and water-resistant jacket featuring standing collar, zip front, and logo at chest", img: "https://columbia.scene7.com/is/image/ColumbiaSportswear2/1556531_010_f?wid=767&hei=767", quantity: 7)
Product.find_or_create_by(name: "Fire TV Stick streaming media player with Alexa built in, includes Alexa Voice Remote, HD, easy set-up, released 2019", price: 35, category: 'electronics', description: "The #1 best-selling streaming media player, with Alexa Voice Remote (2nd Gen, released 2019).", img: "https://images-na.ssl-images-amazon.com/images/I/61WzGTJKl%2BL._AC_SX425_.jpg", quantity: 20)
Product.find_or_create_by(name: "JBL Flip 4 Waterproof Portable Bluetooth Speaker - Black", price: 75, category: 'electronics', description: "JBL Flip 4 is the next generation in the Flip series; it is a portable Bluetooth speaker that delivers surprisingly powerful stereo sound. This compact speaker is powered by a 3000mAh rechargeable Li-ion battery that offers 12 hours of continuous, high-quality audio playtime.", img: "https://images-na.ssl-images-amazon.com/images/I/41lxIdQlg%2BL._SL500_AC_SS350_.jpg", quantity: 15)
Product.find_or_create_by(name: "NETGEAR 4G LTE Broadband Modem - Use LTE as Primary Internet Connection | Unlocked | Works with AT&T, T-Mobile, Verizon (LB1120)", price: 106, category: 'electronics', description: "The NETGEAR 4G LTE Modem gives you a simple, fail safe connectivity solution for your devices or services, avoiding disruptions in broadband when your fixed wire line goes down. Simply connect your existing wire line broadband connection to this modem to provide an automatic LTE broadband backup connection.", img: "https://images-na.ssl-images-amazon.com/images/I/51T5JhQGSGL._AC_SX466_.jpg", quantity: 10)
Product.find_or_create_by(name: "Yaheetech Futon Sofa Bed, Convertible Sofa Couch with Armrest Home Recliner Couch Home Furniture Black", price: 197, category: 'furniture', description: "COMFORT AND STYLE – Sporting a modern design, this futon fuses entertainment with comfort. 4 chrome metal legs add stability, while the durable faux leather makes for added comfort and easy wipe to clean.", img: "https://images-na.ssl-images-amazon.com/images/I/41PQHqTtciL._AC_SY400_.jpg", quantity: 10)
Product.find_or_create_by(name: "Convenience Concepts Oxford Console Table, White", price: 75, category: 'furniture', description: "The Oxford Console Table by Convenience Concepts is a great addition to any home. In a rich glossy white finish, it's sure to complement any décor. Featuring a bottom shelf that provides plenty of space to display collectibles or every day necessities with ease of access. Coordinating pieces are also available, sold separately.", img:"https://images-na.ssl-images-amazon.com/images/I/31lo0NEwT5L._AC_SY400_.jpg", quantity: 10)
Product.find_or_create_by(name: "Greystone Avenue Sofa Arm Table - Couch Table with Non-Slip Silicone Top and Base", price: 60, category: 'furniture', description: "LIMITED SPACE FOR END TABLES? Greystone Avenue is proud to bring our new multipurpose designer couch table trays and armchair tables to your home to help you relax in style. This design offers gently folding sides, adjusting to fit any sofa armchair. Use our sofa trays as couch cup holders, recliner table or as a great alternative to a sofa arm clip table, armchair table, small end table, narrow end table where a c table or couch tables that slide under are not appropriate", img: "https://images-na.ssl-images-amazon.com/images/I/51LRfH4UV-L._AC_SY400_.jpg", quantity: 10)
Product.find_or_create_by(name: "Cards Against Humanity", price: 25, category: 'toys', description: "Cards Against Humanity is a party game for horrible people. The game is simple. Each round, one player asks a question from a black card, and everyone else answers with their funniest white card.", img: "https://images-na.ssl-images-amazon.com/images/I/71ZV5BcG4wL._AC_SY679_.jpg", quantity: 2)
Product.find_or_create_by(name: "Funko Pop!: Dragonball-Z - Goku Eating Noodles", price: 13, category: 'toys', description: "From Dragonball Z, Goku Eating Noodles, Exclusive, as a Pop! vinyl from Funko!", img: "https://images-na.ssl-images-amazon.com/images/I/61SabM4R5fL._AC_SX425_.jpg", quantity: 3)
Product.find_or_create_by(name: "LEGO Star Wars Mandalorian Battle Pack 75267 Mandalorian Shock Troopers and Speeder Bike Building Kit", price: 15, category: 'toys', description: "Kids can build a fearsome Mandalorian army, recreate exciting scenes from Star Wars: The Mandalorian TV show,and develop their own exciting stories with this LEGO Star Wars set!", img: "https://images-na.ssl-images-amazon.com/images/I/815BtXExjyL._AC_SL1500_.jpg", quantity: 3)

