class CreateUserHasMsgs < ActiveRecord::Migration
  def change
    create_table :user_has_msgs do |t|
      t.integer :message_id
      t.integer :sender_id
      t.integer :receiver_id
      t.boolean :send_status
      t.boolean :receive_status
      t.boolean :is_read

      t.timestamps
    end
  end
end
