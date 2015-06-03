class CreateRoomMems < ActiveRecord::Migration
  def change
    create_table :room_mems do |t|
      t.integer :chatroom_id
      t.integer :user_id

      t.timestamps
    end
  end
end
