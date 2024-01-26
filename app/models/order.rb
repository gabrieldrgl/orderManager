class Order < ApplicationRecord
  has_many :items, dependent: :destroy, inverse_of: :order

  validates :customer_name, presence: true

  accepts_nested_attributes_for :items, allow_destroy: true, reject_if: :all_blank

  before_save :calculate_total_price

  private

  def calculate_total_price
    self.total_price = items.collect.map(&:total_price).sum
  end
end
