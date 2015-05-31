class CreateRoomtags < ActiveRecord::Migration
  def change
    create_table :roomtags do |t|
      t.integer :chatroomid
      t.integer :tagid

      t.timestamps
    end
  end
end
