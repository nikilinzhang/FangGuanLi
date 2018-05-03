class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.decimal :price
      t.string :aasm_state
      t.integer :sequence

      t.timestamps
    end
  end
end
