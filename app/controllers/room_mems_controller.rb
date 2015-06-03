class RoomMemsController < ApplicationController
	def show
		@room_mems = RoomMem.all
	end
end
