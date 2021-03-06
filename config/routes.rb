Rails.application.routes.draw do
  resources :vehicules
  resources :commandes do
    resources :vehicules
  end
  resources :livraisons
  resources :contacts do
    resources :livraisons
  end
  devise_for :users

  root to: 'commandes#index'

  get '/clients', to: 'contacts#clients'
  get '/fournisseurs', to: 'contacts#fournisseurs'
  get '/stock', to: 'vehicules#stock'

end
