class SubscriptionsController < ApplicationController
  def new
  end

  def create
    game = Game.find(params[:game_id])
    if current_user
      current_user.games << game
      redirect_to category_game_path(game.category, game)
    else
      redirect_to new_session_path
    end
  end

  def destroy
    if current_user
      subscription = Subscription.find(params[:id])
      game = subscription.game
      subscription.destroy
      redirect_to category_game_path(game.category, game)
    else
      redirect_to new_session_path
    end
  end
end
