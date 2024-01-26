class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :order, null: false, foreign_key: true
      t.string :name
      t.integer :quantity
      t.float :unit_price
      t.float :discount
      t.float :total_price

      t.timestamps
    end
  end
end
