class Tag < ActiveRecord::Base
	has_many :chatrooms, :through => :room_tags
	has_many :room_tags
end
