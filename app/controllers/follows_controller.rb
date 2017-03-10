class FollowsController < ApplicationController
  def user
    p params
    p "***************"
    if current_user
      followed_user = User.find(params[:id])
      current_user.followers << followed_user
      redirect_to user_path(followed_user)
    else
      flash[:notice] = "You are already following this user"
    end
  end
end