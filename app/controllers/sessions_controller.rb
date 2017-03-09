class SessionsController < ApplicationController

	def new
	end

	def create
		p "*********************************************"
		p session_params
		p "***************************************"
		@user = User.find_by(username: session_params[:username])
		p @user 
		# p params_permit
		if @user && @user.authenticate(session_params[:password])
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

	private
	def session_params
		session = {
			username: params[:username],
			password: params[:password]
		}
		# p params.require(:session).permit(:username)
	end
end 