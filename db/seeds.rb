User.create(first_name: "Admin", email: "admin@admin.com" , password: "12345678", admin: true)
User.create(first_name: "Lucas", email: "luc_petti@hotmail.com", password: "12345678")

category = ["drill", "hammer", "screwdriver", "brush"]
location = ["Berlin", "Frankfurt", "Munich", "Cologne", "Dusselforf", "Hamburg"]
photo = ["http://shop.strato.de/WebRoot/Store11/Shops/219750/4FB1/1E18/8371/E65B/2B20/C0A8/28BC/AC3C/GSR_108-2-LI.jpg",
 "https://images-na.ssl-images-amazon.com/images/I/31bham0MybL._SX355_.jpg",
   "https://images.obi.de/product/DE/415x415/418469_1.jpg",
  "https://www.obi.de/akku-kettensaegen/black-decker-akku-kettensaege-gkc3630l20/p/6568372",
  "https://images.obi.de/product/AT/1500x1500/283333_1.jpg",
  "https://images.obi.de/product/SI/1500x1500/106105_1.jpg"]
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
