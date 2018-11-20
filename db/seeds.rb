# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Admin", email: "admin@admin.com" , password: "12345678", admin: true)
User.create(first_name: "Lucas", email: "luc_petti@hotmail.com", password: "12345678")

Tool.create(name: "Drill", category: "simple tools", photo: "https://www.harborfreight.com/media/catalog/product/6/3/63381_zzz_alt1_500_1.jpg", location: "Berlin", price_per_day: 10, user: User.last)
Tool.create(name: "Droll", category: "simple tools", photo: "https://www.harborfreight.com/media/catalog/product/6/3/63381_zzz_alt1_500_1.jpg", location: "Hamburg", price_per_day: 8, user: User.last)

tool = ["drill", "hammer", "screwdriver", "brush"]
location = ["Berlin", "Frankfurt", "Munich", "Cologne", "Dusselforf", "Hamburg"]
