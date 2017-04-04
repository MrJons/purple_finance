require 'rails_helper'

feature 'Transaction' do
  context 'transaction display' do
    before do
      date = DateTime.new(2017, 4, 4)
      Transaction.create(tag:'baby', outlet:'mothercare', amount: 199.99, date: date)
    end
    scenario 'It displays a transaction' do
      visit '/'
      expect(page).to have_content('mothercare | £199.99 | Date: 2017-04-04')
    end
  end

  context 'transaction displays with corresponding' do
    before do
      date = DateTime.new(2017, 4, 4)
      Transaction.create(tag:'baby', outlet:'mothercare', amount: 199.99, date: date)
      Offer.create(product:'savings', message:'We see you\'ve spent money on baby products.
      Can we interest you with a long term savings product?', tag:'baby')
      Offer.create(product:'overdraft', message:'We see you\'ve spent money on a holiday.
      Can we help you with extra overdraft?', tag:'travel')
    end
    scenario 'It displays a transaction' do
      visit '/'
      expect(page).to have_content('We see you\'ve spent money on baby products.
      Can we interest you with a long term savings product?')
      expect(page).not_to have_content('We see you\'ve spent money on a holiday.
      Can we help you with extra overdraft?')
    end
  end

end
