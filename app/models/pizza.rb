class Pizza < ApplicationRecord
  has_many :pizzatoppings, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
