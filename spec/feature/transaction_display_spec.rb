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
end
