class RoomMemsController < ApplicationController
	def show
		@room_mems = RoomMem.where(:chatroom_id => params[:id])  
	end
end
