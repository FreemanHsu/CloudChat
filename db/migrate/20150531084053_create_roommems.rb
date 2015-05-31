class CreateRoommems < ActiveRecord::Migration
  def change
    create_table :roommems do |t|
      t.integer :roomid
      t.integer :memid

      t.timestamps
    end
  end
end
