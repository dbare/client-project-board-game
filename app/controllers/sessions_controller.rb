class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			login(@user)
			redirect_to user_path(@user)
		else
			render 'new'
		end 
	end 

	def destroy
		logout
		redirect_to new_user_path
	end

	# private
	# def session_params
	# 	session = {
	# 		username: params[:username],
	# 		password: params[:password]
	# 	}
	# 	# p params.require(:session).permit(:username)
	# end
end 