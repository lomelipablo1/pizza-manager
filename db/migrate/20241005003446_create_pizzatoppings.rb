class CreatePizzatoppings < ActiveRecord::Migration[7.2]
  def change
    create_table :pizzatoppings do |t|
      t.references :pizza, null: false, foreign_key: true
      t.references :topping, null: false, foreign_key: true

      t.timestamps
    end
  end
end
