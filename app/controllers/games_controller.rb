class GamesController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def upvote
    @game = Game.find(params[:id])
    if current_user
      @game.votes.create(user_id: current_user.id, value: 1)
      redirect_to @game.category
    else
      flash[:notice] = "You must be logged in to use this feature"
      render 'show'
    end
  end

  def downvote
    @game = Game.find(params[:id])
    if current_user
      @game.votes.create(user_id: current_user.id, value: -1)
      redirect_to @game.category
    else
      flash[:notice] = "You must be logged in to use this feature"
      render 'show'
    end
  end
end
