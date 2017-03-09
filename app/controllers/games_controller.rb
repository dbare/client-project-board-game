class GamesController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
