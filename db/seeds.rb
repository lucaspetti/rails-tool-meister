User.destroy_all

puts "Creating users..."

User.create!(first_name: "Admin", email: "admin@admin.com" , password: "12345678", admin: true)
User.create!(first_name: "Lucas", email: "luc_petti@hotmail.com", password: "12345678")

category = ["Chainsaw", "Drill","Grinder", "Hammer"]
price_per_day = ["5","6","7","8","9","10","11"]
description = ["Its a wonderful tool- maintained by my friend Cedric",
  "Its a wonderful tool- maintained by my Ole",
  "Its a wonderful tool- maintained by my Lucas"]

puts "Done. Creating tools..."

Tool.create!(name: "Grinder",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/106105_1.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Uhlandstraße 167 Berlin",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Killer Chainsaw",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/123456.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Charlottenstraße 1 Berlin",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Power Drill",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/283333_1.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Hedwig-Wachenheim-Straße 12 Berlin",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Bavarian Drill",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/283333_1.jpg'),
  description: "This great drill will only works if you drank 5 beers and speak badly of Berliners!",
  category: category[1],
  available: true,
  user: User.first,
  location: "Romanstraße 1, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Grinder",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/106105_1.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Max-Mannheimer-Platz 1, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Killer Chainsaw",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/123456.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Arnulfstraße 52, Munich",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Düsseldorfer Drill",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/283333_1.jpg'),
  description: "Drilling your dreams in Düsseldorf",
  category: category[1],
  available: true,
  user: User.first,
  location: "Erkrather Str. 230, Düsseldorf",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Powerful Grinder",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/106105_1.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Eugen-Richter-Straße 21, Düsseldorf",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Killer Chainsaw",
  image: open('http://res.cloudinary.com/ds7t2o8nq/image/upload/v1542723942/Tools/123456.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Fischerstraße 87, Düsseldorf",
  price_per_day: price_per_day.sample)

puts "Tools created!"
