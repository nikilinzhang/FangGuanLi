class UpdateMobileTypeInPost < ActiveRecord::Migration[5.1]
  def change
  	change_column :posts, :mobile, :string
  end
end
