class RoomTag < ActiveRecord::Base
	belongs_to :tag
	belongs_to :chatroom
end
