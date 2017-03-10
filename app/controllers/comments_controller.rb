class CommentsController < ApplicationController

  def index
    @comment = Comment.find(id: params[:id])
  end
  # post
  def create
    @game = Game.find(params[:game_id])
    if current_user
      @comment = @game.comments.new(body: params[:comment], user_id: current_user.id)
      if @comment && @comment.save
        redirect_to category_game_path(@game.category, @game)
      else
        flash[:notice] = "comment error"
        redirect_to category_game_path(@game.category, @game)
      end
    else
      flash[:notice] = "You must be logged in"
      redirect_to new_session_path
    end
  end

  #put a comment
  def update
  end
  #delete a comment
  def destroy
    @comment = Comment.find(params[:id])
    @game = @comment.game
    @comment.destroy
    redirect_to category_game_path(@game.category, @game)
  end

  def upvote
    @comment = Comment.find(params[:id])
    @game = @comment.game
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
    @game = @comment.game
    if current_user
      @comment.votes.create(user_id: current_user.id, value: -1)
      redirect_to category_game_path(@comment.game.category, @comment.game)
    else
      flash[:notice] = "You must be logged in to use this feature"
      render 'games/show'
    end
  end

  # show form to create a comment
  # def new
  # end
  #show form to edit comment
  # def edit
  # end
  #show a single comment
  # def show
  # end
end
