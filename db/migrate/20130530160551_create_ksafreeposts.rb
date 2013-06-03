class CreateKsafreeposts < ActiveRecord::Migration
  def change
    create_table :ksafreeposts do |t|
      t.string :title
      t.text :content
      t.integer :viewcount
      t.date :created_at

      t.timestamps
    end
  end
end
