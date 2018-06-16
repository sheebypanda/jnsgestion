Rails.application.routes.draw do
  resources :commandes
  resources :livraisons
  resources :contacts do
    resources :livraisons
  end
  devise_for :users

  root to: 'commandes#index'

  get '/clients', to: 'contacts#clients'
  get '/fournisseurs', to: 'contacts#fournisseurs'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
