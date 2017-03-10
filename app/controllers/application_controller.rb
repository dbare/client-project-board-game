class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :login, :logout, :current_subscription

  def login(user)
  	session[:user_id] = user.id
  end

  def logout
  	session[:user_id] = nil
  end

  def current_user
  	if session[:user_id]
  		User.find(session[:user_id])
  	else
  		nil
  	end
  end

  # def subscribed?(user, game)
  #   subscription = user.games.select{|game_ob| game_ob.id == game.id}
  #   if subscription.length > 0
  #     true
  #   else
  #     false
  #   end
  # end
  def current_subscription(game)
    subscription = current_user.games.select{|game_ob| game_ob.id == game.id}
    # subscription.first
  end
end
