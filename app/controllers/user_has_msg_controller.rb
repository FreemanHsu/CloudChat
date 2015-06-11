class UserHasMsgController < ApplicationController
  def new
  	@receiver = User.find(params[:receiver_id])
  end

  def send2
    @n = UserHasMsg.where(:sender_id => current_user.id ).count
    if params[:num] == 'first'
      params[:num] = '-9999'
    elsif params[:num] == 'last' 
      params[:num] = '9999'
    end
      
    @@send_msg_num = @@send_msg_num + params[:num].to_i
    if @@send_msg_num < 0
      @@send_msg_num = 0
    elsif @@send_msg_num >= @n
      @@send_msg_num = @n - 10 > 0 ? @n - 10 : @n
    end
    @send_msgs = UserHasMsg.where(:sender_id => current_user.id).limit(10).offset(@@send_msg_num)
  end

  def recv 
    if params[:num] == 'first'
      params[:num] = '-9999'
    elsif params[:num] == 'last' 
      params[:num] = '9999'
    end

    @n = UserHasMsg.where(:receiver_id => current_user.id ).count
    @@recv_msg_num = @@recv_msg_num + params[:num].to_i
    if @@recv_msg_num < 0
      @@recv_msg_num = 0
    elsif @@recv_msg_num >= @n
      @@recv_msg_num = @n - 10 > 0 ? @n - 10 : @n
    end
    @recv_msgs = UserHasMsg.where(:receiver_id => current_user.id).limit(10).offset(@@recv_msg_num)
  end

  def destroy
  end
end
