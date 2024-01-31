class RemoveTotalPriceFromItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :items, :total_price, :float
  end
end
