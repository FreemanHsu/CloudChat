class DropChatroomTable < ActiveRecord::Migration
  def up
    drop_table :chatrooms
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
