class RoomMemsController < ApplicationController
	def show
		@room_mems = RoomMem.where(:chatroom_id => params[:id])  
	end

	def enter
		@room_mem = RoomMem.new
		@user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
		@room_mem.chatroom_id = params[:id]

		if RoomMem.exists?(:user_id => @user.id, :chatroom_id => params[:id])  
		else
			@room_mem.user_id = @user.id
			@chatroom = @room_mem.chatroom
			@chatroom.memnum = @chatroom.memnum+1
			@chatroom.save
			@room_mem.save
		end
	end
end
