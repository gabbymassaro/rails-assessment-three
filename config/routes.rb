Rails.application.routes.draw do
  resources :pizzerias, only: [:new, :create, :show, :index] do
    resources :pizzas, only: [:new, :create ]
  end
end
