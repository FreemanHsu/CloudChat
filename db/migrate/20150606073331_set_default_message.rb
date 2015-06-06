class SetDefaultMessage < ActiveRecord::Migration
  def change
  	change_column :user_has_msgs, :send_status, :boolean, :default => false
  	change_column :user_has_msgs, :receive_status, :boolean, :default => false  
  	change_column :user_has_msgs, :is_read, :boolean, :default => false  
  end
end
