Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :categories, only: [:index,:show] do
    resources :games, only: [:index, :show]
  end
end
