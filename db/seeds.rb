User.create!(first_name: "Admin", email: "admin@admin.com" , password: "12345678", admin: true)
User.create!(first_name: "Lucas", email: "luc_petti@hotmail.com", password: "12345678")

category = ["drill", "hammer", "screwdriver", "brush"]
location = ["Uhlandstraße 167 Berlin", "Charlottenstraße 1 Berlin", "Hedwig-Wachenheim-Straße 12 Berlin", "Lauterstraße 25 Berlin", "Rosenthalerstraße 27 Berlin"]
price_per_day = ["5","6","7","8","9","10","11"]
description = ["Its a wonderful tool- maintained by my friend Cedric",
  "Its a wonderful tool- maintained by my Ole",
  "Its a wonderful tool- maintained by my Lucas"]

Tool.create(name: category.sample,
  image: '../app/assets/images/logo.jpg',
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)

Tool.create!(name: category.sample,
  image: '../app/assets/images/logo.jpg',
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)
#
Tool.create!(name: category.sample,
  image: '../app/assets/images/logo.jpg',
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)

Tool.create!(name: category.sample,
  image: '../app/assets/images/logo.jpg',
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)

Tool.create!(name: category.sample,
  image: '../app/assets/images/logo.jpg',
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  price_per_day: price_per_day.sample)
