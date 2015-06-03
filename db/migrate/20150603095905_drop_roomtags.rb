class DropRoomtags < ActiveRecord::Migration
  def up
    drop_table :roomtags
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
