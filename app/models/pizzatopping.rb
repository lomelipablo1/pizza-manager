class Pizzatopping < ApplicationRecord
  belongs_to :pizza
  belongs_to :topping
end
