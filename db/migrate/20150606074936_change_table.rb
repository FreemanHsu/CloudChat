class ChangeTable < ActiveRecord::Migration
  def change
  	add_column :user_has_msgs, :message_id, :integer
  	remove_column :messages, :user_has_msg_id
  end
end
