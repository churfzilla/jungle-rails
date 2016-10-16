# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
raise "Development seeds only (for now)!" unless Rails.env.development?

# Let's do this ...
User.destroy_all
# Users - passes are 'test'
puts "Creating"

User.create(
  id: 123,
  first_name: 'Chad',
  last_name: 'Bruhaug',
  email: 'chadbruhaug@gmail.com',
  password_digest:'$2a$10$RQfKBifUmzr1vBW4NMtO8.jdlcCu9gvVmuzw5tdQKL5aFpOcOohzS'
)
User.create(
  id: 124,
  first_name: 'Cherm',
  last_name: 'Alerm',
  email: 'cherm@gmail.com',
  password_digest:'$2a$10$RQfKBifUmzr1vBW4NMtO8.jdlcCu9gvVmuzw5tdQKL5aFpOcOohzS'
)
User.create(
  id: 125,
  first_name: 'Churf',
  last_name: 'Zilla',
  email: 'churfzilla@gmail.com',
  password_digest:'$2a$10$RQfKBifUmzr1vBW4NMtO8.jdlcCu9gvVmuzw5tdQKL5aFpOcOohzS'
)


Review.destroy_all
## Reviews
puts "Creating Reviews!"


Review.create!({
  product_id: 12,
  user_id: 123,
  description: "This bookshelf is both ugly and overpriced.",
  rating: 1
  })
Review.create!({
  product_id: 11,
  user_id: 124,
  description: "You'll find this chair shocking.",
  rating: 4
  })
Review.create!({
  product_id: 10,
  user_id: 125,
  description: "For when you always want to be uncomfortable",
  rating: 2
  })


## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.products.create!({
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

cat1.products.create!({
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

cat1.products.create!({
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 4,
  price: 34.49
})

cat1.products.create!({
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

cat1.products.create!({
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

cat1.products.create!({
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


cat2.products.create!({
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

cat2.products.create!({
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 23,
  price: 2_483.75
})


puts "DONE!"
