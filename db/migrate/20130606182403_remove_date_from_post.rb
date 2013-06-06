class RemoveDateFromPost < ActiveRecord::Migration
  def up
    remove_column :posts, :date
  end

  def down
    add_column :posts, :date, :integer
  end
end
