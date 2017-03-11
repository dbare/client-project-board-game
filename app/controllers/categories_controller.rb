class CategoriesController < ApplicationController
  def index
    @parallax = true
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end
end
