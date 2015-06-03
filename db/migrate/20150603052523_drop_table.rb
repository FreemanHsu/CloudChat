class DropTable < ActiveRecord::Migration
  def up
    drop_table :roommems
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
