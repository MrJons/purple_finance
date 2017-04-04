require 'rails_helper'

feature 'Transaction' do
  context 'transaction display' do
    before do
      Transaction.create(tag: 'baby')
    end
    scenario 'It displays a transaction with the correct tag' do
      visit '/'
      expect(page).to have_content('baby')
    end
  end
end
