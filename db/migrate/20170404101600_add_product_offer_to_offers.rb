class AddProductOfferToOffers < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :product, :string
  end
end
