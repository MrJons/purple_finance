require 'rails_helper'
require 'spec_helper'

feature "Offers" do
  context "When offers are not offered" do
    before do
      @account = Account.create()
    end

    scenario "can see message" do
      visit "/accounts"
        click_link "Show"
      expect(page).not_to have_content("Baby?=Savings product")
    end

    scenario "can see message" do
      visit "/accounts"
        click_link "Show"
      expect(page).not_to have_content("savings")
    end
  end



  context "When offers are not offered" do
    before do
      @account1 = Account.create()
      transaction = Transaction.create(tag:'baby', account_id: @account1.id)
      transaction1 = Transaction.create(tag:'taxi', account_id: @account1.id)
      offer = Offer.create(product:'savings', message:'Baby?=Savings product')
    end



  context "when offers are present" do
    before do
      load "#{Rails.root}/db/seeds.rb"
    end
    scenario "can see offers" do
      visit "/accounts"
        click_link "Show"
      expect(page).to have_content("savings")
    end
    scenario "can see message" do
      visit "/accounts"
        click_link "Show"
      expect(page).to have_content("Baby?=Savings product")
    end

    scenario "can not irrelevant offer" do
      visit "/accounts"
        click_link "Show"
      expect(page).to have_content("Baby?=Savings product")
    end
  end
end
