Rails.application.routes.draw do
  resources :pizzerias, only: [:index, :new, :show, :create] do
    resources :pizzas, only: [:new, :show, :create]
  end
end
