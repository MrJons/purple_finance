class AddOutletToTransaction < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :outlet, :string
  end
end
