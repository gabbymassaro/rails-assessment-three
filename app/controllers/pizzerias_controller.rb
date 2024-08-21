class PizzeriasController < ApplicationController
  def new
    @pizzeria = Pizzeria.new
    @pizzeria.pizzas.build
  end

  def create
    @pizzeria = Pizzeria.create(pizzeria_params)
    redirect_to @pizzeria
  end

  def show
    @pizzeria = Pizzeria.find(params[:id])
    @pizza = Pizza.new(pizzeria: @pizzeria)
  end

  def index
    @pizzerias = Pizzeria.all
  end

  private
  def pizzeria_params
    params.require(:pizzeria).permit(:name, :address, pizza_attributes: [:name, :description])
  end
end
