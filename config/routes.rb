Rails.application.routes.draw do
  get 'abouts/index'

  resources :eventos  do
  	resources :item_events do
      member do 
        patch :completo
      end
    end
  end

  get 'calendarios/show'
  
=begin  
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
=end


devise_for :users, controllers: { registrations: "users/registrations", }


  resources :twitterposts




  root 'bemvindos#index'
  resources :lamport_notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
