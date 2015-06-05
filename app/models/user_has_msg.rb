class UserHasMsg < ActiveRecord::Base
	has_one :message
	belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"
	belongs_to :receiver, :class_name => "User", :foreign_key => "receiver_id"
end
