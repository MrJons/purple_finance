class AddTagToOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :tag, :string
  end
end
