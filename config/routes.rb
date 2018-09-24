Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  get 'restaurants/search/:query', to: 'restaurants#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
