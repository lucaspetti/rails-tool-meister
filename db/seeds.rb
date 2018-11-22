User.destroy_all

puts "Creating users..."

User.create!(first_name: "Admin", email: "admin@admin.com" , password: "12345678", admin: true)
User.create!(first_name: "Lucas", email: "luc_petti@hotmail.com", password: "12345678")

category = ["drill", "hammer", "screwdriver", "brush"]
location = ["Uhlandstraße 167 Berlin", "Charlottenstraße 1 Berlin", "Hedwig-Wachenheim-Straße 12 Berlin", "Lauterstraße 25 Berlin", "Rosenthalerstraße 27 Berlin"]
price_per_day = ["5","6","7","8","9","10","11"]
description = ["Its a wonderful tool- maintained by my friend Cedric",
  "Its a wonderful tool- maintained by my Ole",
  "Its a wonderful tool- maintained by my Lucas"]

puts "Done. Creating tools..."

Tool.create!(name: "Grinding Machine",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/106105_1.jpg'),
  description: "A wonderful grinding machine to help you grind!",
  category: category[0],
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)

Tool.create!(name: "Chainsaw",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/123456.jpg'),
  description: "A killing chainsaw",
  category: "Eletric Tools",
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)
#
Tool.create!(name: "Pompidou Grinding Machine",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/418469_1.jpg'),
  description: "A Pompidou grinding machine to pump your grind!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Place Georges-Pompidou, Paris",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Power Drill",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/283333_1.jpg'),
  description: "Drilling your dreams in Berlin!",
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)

Tool.create!(name: "Münchner Power Drill",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/283333_1.jpg'),
  description: "Drilling your dreams in Munich!",
  category: category.sample,
  available: true,
  user: User.first,
  location: "Romanstraße 1, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Düsseldorfer Power Drill",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/283333_1.jpg'),
  description: "Drilling your dreams in Düsseldorf",
  category: category.sample,
  available: true,
  user: User.first,
  location: "Erkrather Str. 230, Düsseldorf",
  price_per_day: price_per_day.sample)

puts "Tools created!"
