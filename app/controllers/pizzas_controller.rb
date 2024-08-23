class PizzasController < ApplicationController
  def new
    @pizza = Pizza.new
    @pizzeria = Pizzeria.find(params[:pizzeria_id])
  end
end
