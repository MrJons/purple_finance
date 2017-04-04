# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


transaction = Transaction.create(tag:'baby')
offer = Offer.create(product:'savings', message:'We see you\'ve spent money on baby products.
Can we interest you with a long term savings product?')

20.times do |transaction|
  Transaction.create(tag: 'baby')
end
