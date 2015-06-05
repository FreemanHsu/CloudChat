class Friendship < ActiveRecord::Base
	belongs_to :user
	# 其模型并不存在，所以要给出 :class_name 及 :foreign_key 选项。
	# 以让活动记录知道上哪里去找记录。
	belongs_to :friend, :class_name => "User", :foreign_key => "user_id"

end
