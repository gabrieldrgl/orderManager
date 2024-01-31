class Order < ApplicationRecord
  has_many :items, dependent: :destroy, inverse_of: :order

  validates :customer_name, presence: true

  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

  before_save :calculate_total_price

  def total_discount
    items.sum(:discount)
  end

  private

  def calculate_total_price
    self.total_price = items.sum { |item| item.unit_price * item.quantity - item.discount }
  end
end
