class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  	protect_from_forgery with: :exception

  	@@num = 0
  	def current_user
  		@current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
	end
	
	def search
		@chatroom = Chatroom.where(:roomno => params[:id]) \
			+ Chatroom.where(:roomname => params[:id])
	end

	helper_method :current_user
end
