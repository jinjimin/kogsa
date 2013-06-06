class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end

  def down
  end
end
