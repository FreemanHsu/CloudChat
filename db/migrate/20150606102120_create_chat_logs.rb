class CreateChatLogs < ActiveRecord::Migration
  def change
    create_table :chat_logs do |t|
      t.integer :user_id
      t.integer :chatroom_id
      t.text :content
      t.string :msg_tag

      t.timestamps
    end
  end
end
