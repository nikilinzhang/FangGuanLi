class CreateRents < ActiveRecord::Migration[5.1]
  def change
    create_table :rents do |t|
      t.string :title
      t.string :price
      t.string :contact_name
      t.string :mobile
      t.string :wechat
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
