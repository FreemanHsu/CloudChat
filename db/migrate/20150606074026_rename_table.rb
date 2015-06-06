class RenameTable < ActiveRecord::Migration
  def change
  	rename_column :messages, :user_has_msgs, :user_has_msg_id
  end
end
