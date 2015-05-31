class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.string :roomname
      t.string :roomcover
      t.boolean :privacy
      t.integer :popularity, default: 1
      t.integer :memnum
      t.integer :roomno
      t.integer :key
      t.integer :creatorid

      t.timestamps
    end
  end
end
