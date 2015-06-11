class User < ActiveRecord::Base
	has_many :chatrooms, :through => :room_mems
	has_many :room_mems
	has_many :friendships
	has_many :user_has_msgs
	has_many :messages, :through => :user_has_msgs
	# 创建 has_many :through 关联，在 friendships 内找寻 friends。
	has_many :friends, :through => :friendships

	has_secure_password
	before_create { generate_token(:auth_token) }

	def generate_token(column)
	  begin
	    self[column] = SecureRandom.urlsafe_base64
	  end while User.exists?(column => self[column])
	end
end
