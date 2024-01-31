class Item < ApplicationRecord
  belongs_to :order, inverse_of: :items

  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit_price, presence: true

  def total_price
    unit_price * quantity - discount
  end
end
