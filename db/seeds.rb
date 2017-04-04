# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

date1 = DateTime.new(2017, 4, 4)

transaction = Transaction.create(tag:'baby', outlet:'mothercare', amount: 199.99, date: date1)
offer_travel = Offer.create(product:'overdraft', message:'We see you\'ve spent money on a holiday.
Can we help you with extra overdraft?', tag:'travel')
offer_baby = Offer.create(product:'savings', message:'We see you\'ve spent money on baby products.
Can we interest you with a long term savings product?', tag:'baby')
