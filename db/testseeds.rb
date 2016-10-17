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

