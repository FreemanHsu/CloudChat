class ChangeMessage < ActiveRecord::Migration
  def change
  	add_column :messages, :user_has_msgs, :integer
  	remove_column :user_has_msgs, :message_id
  end
end
