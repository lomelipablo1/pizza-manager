class Pizza < ApplicationRecord
  has_many :pizzatoppings

  validates :name, presence: true, uniqueness: true
end
