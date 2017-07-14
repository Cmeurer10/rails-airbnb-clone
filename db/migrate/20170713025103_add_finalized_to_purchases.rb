class AddFinalizedToPurchases < ActiveRecord::Migration[5.0]
  def change
    add_column :purchases, :finalized, :boolean, default: false
  end
end
