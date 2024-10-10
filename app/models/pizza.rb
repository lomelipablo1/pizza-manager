class Pizza < ApplicationRecord
  has_many :pizzatoppings, dependent: :delete_all

  validates :name, presence: true, uniqueness: true
end
