class AddContactNumberToPosts < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :mobile, :int
  end
end
