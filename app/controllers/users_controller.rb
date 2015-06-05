class UsersController < ApplicationController
	def signup
		@user = User.new
	end

	def login
		
	end

	def show
		if User.exists?(params[:id])
			@user = User.find(params[:id])
		else
			redirect_to :root
		end
	end

	def add_friend
		@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
		@user = User.find(params[:id])

		unless Friendship.exists?(:user_id => @current_user.id, :friend_id => params[:id])  
			unless Friendship.exists?(:user_id => params[:id], :friend_id => @current_user.id)
				unless @current_user.id == @user.id
					friendship = Friendship.new
					friendship.user_id = @current_user.id
					friendship.friend_id = @user.id
					friendship.save
				end
			end
		end
		
	end

	def logout
		cookies.delete(:auth_token)
		redirect_to :root
	end

	def create_login_session
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password])
			if params[:remember_me]
				cookies.permanent[:auth_token] = user.auth_token
			else
				cookies[:auth_token] = user.auth_token
			end
			redirect_to :root
		else
			redirect_to :login
		end
	end

	def create
		user = User.new(user_params)
		user.save
		cookies[:auth_token] = user.auth_token
		redirect_to :root
	end

	private
	def user_params
		params.require(:user).permit(:username, :password)
	end
end
