Rails.application.routes.draw do
  resources :contacts
  devise_for :users

  root to: 'contacts#index'

  get '/clients' to: 'contacts#clients'
  get '/fournisseur' to: 'contacts#fournisseurs'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
