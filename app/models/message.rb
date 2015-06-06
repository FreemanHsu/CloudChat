class Message < ActiveRecord::Base
	has_one :user_has_msg
end
