class ChangeColumnOfChatrooms < ActiveRecord::Migration
  def change
  	rename_column :chatrooms, :creatorid, :user_id
  end
end
