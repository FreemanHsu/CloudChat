class Chatroom < ActiveRecord::Base
	has_many :users, :through => :room_mems
	has_many :room_mems
	before_create { generate_room_no(:roomno) }

	def generate_room_no(column)
	  begin
	    self[column] = 1 + Random.rand(9999)
	  end while Chatroom.exists?(column => self[column])
	end


	validates :roomname, presence: true
	validates :roomcover,  allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
end
