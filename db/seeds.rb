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
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542981130/grinder_2.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Uhlandstraße 167 Berlin",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Killer Chainsaw",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542982726/pexels-photo-209229.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Charlottenstraße 1 Berlin",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Power Drill",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542980941/Drill_Berlin_2.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Hedwig-Wachenheim-Straße 12 Berlin",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Crazy Grinder",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542982878/grinder_3.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Rudi-Dutschke-Straße 26, Berlin",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Great Chainsaw",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542980941/chainsaw_3.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Augustenburger Place 1, Berlin",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Super Drill",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542981129/drill_2.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Prenzlauer Allee 80, Berlin",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Grinder",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542981130/grinder_2.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Romanstraße 1, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Killer Chainsaw",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542982726/pexels-photo-209229.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Max-Mannheimer-Platz 1, Munich",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Power Drill",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542980941/Drill_Berlin_2.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Arnulfstraße 52, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Crazy Grinder",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542982878/grinder_3.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Spiridon Louis Ring 21, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Great Chainsaw",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542980941/chainsaw_3.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Maria Ward Straße 1A, Munich",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Super Drill",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542981129/drill_2.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Ottobrunner Straße 61, Munich",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Grinder",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542981130/grinder_2.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Erkrather Str. 230, Düsseldorf",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Killer Chainsaw",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542982726/pexels-photo-209229.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Eugen-Richter-Straße 21, Düsseldorf",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Power Drill",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542980941/Drill_Berlin_2.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Fischerstraße 87, Düsseldorf",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Crazy Grinder",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542982878/grinder_3.jpg'),
  description: "A wonderful grinder! Very nice to make any floors looks like new",
  category: category[2],
  available: true,
  user: User.first,
  location: "Königsbergerstraße 87, Düsseldorf",
  price_per_day: price_per_day.sample)

Tool.create!(name: "Great Chainsaw",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542980941/chainsaw_3.jpg'),
  description: "Amazing Tool for serial killer. Will even cut through a wall in case your chasing your victim!",
  category: category[0],
  available: true,
  user: User.first,
  location: "Heerdter Landstraße 160, Düsseldorf",
  price_per_day: price_per_day.sample)


Tool.create!(name: "Super Drill",
  image: open('https://res.cloudinary.com/db7b7nvyi/image/upload/v1542981129/drill_2.jpg'),
  description: "Drilling your dreams! Avoid using on humans it hurts",
  category: category[1],
  available: true,
  user: User.first,
  location: "Glockenstraße 20 Düsseldorf",
  price_per_day: price_per_day.sample)


puts "Tools created!"
