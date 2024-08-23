class PizzasController < ApplicationController
  def new
    @pizza = Pizza.new
  end
end
