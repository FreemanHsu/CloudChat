class UsersController < ApplicationController
	def signup
		@user = User.new
	end

	def login
		
	end

	def home
		@has_friends = Friendship.where(:user_id => current_user.id)
		@user = current_user
	end

	def show
		if User.exists?(params[:id])
			@user = User.find(params[:id])
		else
			redirect_to :root
		end
	end

	def add_friend
		@user = User.find(params[:id])

		unless Friendship.exists?(:user_id => current_user.id, :friend_id => params[:id])  
			unless Friendship.exists?(:user_id => params[:id], :friend_id => current_user.id)
				unless current_user.id == @user.id
					friendship = Friendship.new
					friendship.user_id = current_user.id
					friendship.friend_id = @user.id
					friendship.save

					friendship1 = Friendship.new
					friendship1.user_id = @user.id 
					friendship1.friend_id = current_user.id
					friendship1.save
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

	def edit
	  @user = current_user
	  respond_to { |format| format.html }
	end

	def update
	    @user = current_user
	    if @user.update(info_params)
	    		redirect_to home_path
      	else	
	        format.html { render :edit }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	     
	    end
  	end

	private
	def user_params
		params.require(:user).permit(:username, :password)
	end

	def info_params
		params.require(:user).permit(:phone, :email, :nickname, :gender, :description, :avatar)
	end
end
