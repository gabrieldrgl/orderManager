class Order < ApplicationRecord
  has_many :items, dependent: :destroy, inverse_of: :order

  validates :customer_name, presence: true
end
