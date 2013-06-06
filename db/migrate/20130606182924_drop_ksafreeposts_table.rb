class DropKsafreepostsTable < ActiveRecord::Migration
  def up
    drop_table :ksafreeposts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
