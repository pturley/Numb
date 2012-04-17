Numb::Application.routes.draw do
  devise_for :users

  root :to => "home#index"
  resources :phones
  resources :phone_numbers
end
