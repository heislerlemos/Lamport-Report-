Rails.application.routes.draw do
  resources :eventos
  get 'calendarios/show'

  devise_for :users
  root 'bemvindos#index'
  resources :lamport_notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
