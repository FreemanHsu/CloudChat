class User < ActiveRecord::Base
	has_many :chatroom, :foreign_key => :chatroom_id
	has_secure_password
	
	before_create { generate_token(:auth_token) }

	def generate_token(column)
	  begin
	    self[column] = SecureRandom.urlsafe_base64
	  end while User.exists?(column => self[column])
	end
end
