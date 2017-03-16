Rails.application.routes.draw do
  resources :congrats
  resources :tens
  resources :nines
  resources :eights
  resources :sevens
  resources :questionsixes
  resources :questionfives
  resources :wells
  resources :questionfours
  resources :questionthrees
  resources :nopes
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'
end
