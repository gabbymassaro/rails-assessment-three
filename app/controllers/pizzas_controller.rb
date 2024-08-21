class PizzasController < ApplicationController
  before_action :set_pizzeria
  before_action :set_pizza, only: [:edit, :update, :show]

  def new
    @pizza = @pizzeria.pizzas.build
  end

  def create
    @pizza = @pizzeria.pizzas.build(pizza_params)
    if @pizza.save
      redirect_to @pizzeria, notice: 'Pizza was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pizza.update(pizza_params)
      redirect_to @pizzeria, notice: 'Pizza was successfully updated.'
    else
      render :edit
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def index
    @pizzas = Pizza.all
  end

  private

  def set_pizzeria
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end

  def set_pizza
    # @pizza = @pizzeria.pizzas.find(params[:id])
    @pizza = @pizzeria.pizzas
  end

  def pizza_params
    params.require(:pizza).permit(:name, :description, :pizzeria_id)
  end
end