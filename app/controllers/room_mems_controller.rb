class RoomMemsController < ApplicationController
	def show
		@room_mems = RoomMem.where(:chatroom_id => params[:id])  
	end

	def enter
		@room_mem = RoomMem.new
		@room_mem.chatroom_id = params[:id]

		if RoomMem.exists?(:user_id => current_user.id, :chatroom_id => params[:id])  
		else
			@room_mem.user_id = current_user.id
			@chatroom = @room_mem.chatroom
			@chatroom.memnum = @chatroom.memnum+1
			@chatroom.save
			@room_mem.save
		end
	end
end
