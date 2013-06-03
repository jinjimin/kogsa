class AddAuthorToKsafreeposts < ActiveRecord::Migration

  def change
    add_column :ksafreeposts, :author, :string
  end
  
end
