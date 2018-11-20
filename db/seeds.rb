User.create(first_name: "Admin", email: "admin@admin.com" , password: "12345678", admin: true)
User.create(first_name: "Lucas", email: "luc_petti@hotmail.com", password: "12345678")

category = ["drill", "hammer", "screwdriver", "brush"]
location = ["Berlin", "Frankfurt", "Munich", "Cologne", "Dusselforf", "Hamburg"]
photo = ["283333_1","106105_1","GSR_108-2-LI","656837_1","418469_1","31bham0MybL._SX355_"]
price_per_day = ["5","6","7","8","9","10","11"]
description = ["Its a wonderful tool- maintained by my friend Cedric",
  "Its a wonderful tool- maintained by my Ole",
  "Its a wonderful tool- maintained by my Lucas"]

Tool.create(name: "Tool1",
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  photo: photo.sample,
  price_per_day: price_per_day.sample)

Tool.create(name: "Tool2",
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  photo: photo.sample,
  price_per_day: price_per_day.sample)
#
Tool.create(name: "Tool3",
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  photo: photo.sample,
  price_per_day: price_per_day.sample)

Tool.create(name: "Tool4",
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  photo: photo.sample,
  price_per_day: price_per_day.sample)

Tool.create(name: "Tool4",
  description: description.sample,
  category: category.sample,
  available: true,
  user: User.first,
  location: location.sample,
  photo: photo.sample,
  price_per_day: price_per_day.sample)
