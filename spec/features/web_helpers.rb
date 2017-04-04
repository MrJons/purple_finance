def create_transaction
  date = DateTime.new(2017, 4, 4)
  Transaction.create(tag:'baby', outlet:'mothercare', amount: 199.99, date: date)
end

def create_baby_offer
  Offer.create(product:'savings', message:'We see you\'ve spent money on baby products.
  Can we interest you with a long term savings product?', tag:'baby')
end

def create_travel_offer
  Offer.create(product:'overdraft', message:'We see you\'ve spent money on a holiday.
  Can we help you with extra overdraft?', tag:'travel')
end
