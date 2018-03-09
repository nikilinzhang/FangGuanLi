class AddContactEmailToPosts < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :email, :string
  end
end
