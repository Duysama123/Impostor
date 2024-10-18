class Order < ApplicationRecord
  belongs_to :customer
    # Validate presence and logical correctness of fields
    validates :order_date, presence: true
    validates :total_quantity, numericality: { only_integer: true, greater_than: 0 }
    validates :unit_price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
    # Custom validation for order_date
    validate :order_date_change_to_be_saved
end
