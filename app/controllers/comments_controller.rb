class CommentsController < ApplicationController
  def upvote
    @comment = Comment.find(params[:id])
    if current_user
      @comment.votes.create(user_id: current_user.id, value: 1)
      redirect_to category_game_path(@comment.game.category, @comment.game)
    else
      flash[:notice] = "You must be logged in to use this feature"
      render 'games/show'
    end
  end

  def downvote
    @comment = Comment.find(params[:id])
    if current_user
      @comment.votes.create(user_id: current_user.id, value: -1)
      redirect_to category_game_path(@comment.game.category, @comment.game)
    else
      flash[:notice] = "You must be logged in to use this feature"
      render 'games/show'
    end
  end
end
