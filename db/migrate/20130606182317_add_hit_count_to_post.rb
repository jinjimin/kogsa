class AddHitCountToPost < ActiveRecord::Migration
  def change
    add_column :posts, :hit_count, :integer
  end
end
