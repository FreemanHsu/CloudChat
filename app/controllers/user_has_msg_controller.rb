class UserHasMsgController < ApplicationController
  def new
  	@receiver = User.find(params[:receiver_id])
  end

  def send2
	@send_msgs = UserHasMsg.where(:sender_id => current_user.id )
  end

  def recv 
	@recv_msgs = UserHasMsg.where(:receiver_id => current_user.id )
  end

  def destroy
  end
end
