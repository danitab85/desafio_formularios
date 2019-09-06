class Sale < ApplicationRecord

  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: [1, 2, 3, 4, 5], message: "%{value} is not a valid size" }
  validates :value, numericality: { only_integer: true, grater_than_or_equal_to: 0  }
  validates :discount, numericality: { only_integer: true, less_than_or_equal_to: 40, message: "%{value} is not a valid size" }
end
