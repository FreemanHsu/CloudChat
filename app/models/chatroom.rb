class Chatroom < ActiveRecord::Base
	validates :roomname, :privacy, presence: true
	validates :roomcover, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}
end
