Rails.application.routes.draw do

	root "categories#index"
  resources :sessions
  resources :users

  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  resources :categories, only: [:index,:show] do
    resources :games, only: [:index, :show]
  end

end
