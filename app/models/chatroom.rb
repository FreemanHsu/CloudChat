class Chatroom < ActiveRecord::Base
	belongs_to :user, :class_name => 'User', :foreign_key => :user_id
	before_create { generate_room_no(:roomno) }

	def generate_room_no(column)
	  begin
	    self[column] = 1 + Random.rand(9999)
	  end while Chatroom.exists?(column => self[column])
	end


	validates :roomname, :privacy, presence: true
	validates :roomcover, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
end
