Rails.application.routes.draw do
	root "categories#index"
  resources :sessions
  resources :users

  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
