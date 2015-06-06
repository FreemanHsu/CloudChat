class MessageController < ApplicationController
	def create
		message = Message.new
		message.content = params[:content]
	  	message.save

  	  	@user_has_msg = UserHasMsg.new
		@user_has_msg.sender_id = current_user.id
		@user_has_msg.receiver_id = params[:receiver_id]
	  	@user_has_msg.message_id = message.id
	  	@user_has_msg.message = message
	  	message.user_has_msg = @user_has_msg
	  	@user_has_msg.save
	  	redirect_to home_path
	end


end
