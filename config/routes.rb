Rails.application.routes.draw do
  resources :sessions
  resources :users
<<<<<<< HEAD
=======
  resources :categories, only: [:index,:show] do
    resources :games, only: [:index, :show]
  end
>>>>>>> b5d15b6f81df26d3ff7766ef04a63f530abcd8c2
end
