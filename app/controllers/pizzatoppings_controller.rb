class PizzatoppingsController < ApplicationController
    def create
        @pizza = Pizza.find(params[:pizza_id])
        @pizzatopping = @pizza.pizzatoppings.create(pizzatoppings_params)
        redirect_to pizza_path(@pizza)
      end
    
    def destroy
        @pizzatopping = Pizzatopping.find(params[:id])
        @pizzatopping.destroy

        redirect_to pizza_path(@pizza), status: :see_other
    end

    private
    def pizzatoppings_params
        params.require(:pizzatopping).permit(:topping_id)
    end
end
