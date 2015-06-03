class CreateRoomTags < ActiveRecord::Migration
  def change
    create_table :room_tags do |t|
      t.integer :chatroom_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
