Rails.application.routes.draw do
  resources :pizzerias do
    resources :pizzas
  end
end
