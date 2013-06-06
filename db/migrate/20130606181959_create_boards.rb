class CreateBoards < ActiveRecord::Migration
  def up
    create_table :boards do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
  end
end
