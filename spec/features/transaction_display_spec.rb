require 'rails_helper'

feature 'Transaction' do
  context 'transaction display' do
    before do
      create_transaction
    end
    scenario 'It displays a transaction' do
      visit '/'
      expect(page).to have_content('mothercare')
    end
  end

  context 'transaction displays with corresponding tag' do
    before do
      create_transaction
      create_baby_offer
      create_travel_offer
    end
    scenario 'It displays correct offer' do
      visit '/'
      expect(page).to have_css("a.offer-name", :text => 'savings')
      expect(page).to have_css("div.offer-message", :text => "We see you've spent money on baby products")
    end
  end

end
