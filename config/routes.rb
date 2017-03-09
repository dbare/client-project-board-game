Rails.application.routes.draw do
  root 'categories#index'
  resources :sessions
  resources :users

  resources :categories, only: [:index,:show] do
    resources :games, only: [:index, :show]
  end
  post '/games/:id/upvotes' => 'game#upvote', as: :game_upvote
  post '/games/:id/downvotes' => 'game#downvote', as: :game_downvote
  # Handling comments, follows, votes
  shallow do
    resources :games, only: [] do
      resources :comments
      resources :subscriptions
    end
  end
end
