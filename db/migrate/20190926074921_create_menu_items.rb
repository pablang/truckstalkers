class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.integer :truck_id
      t.string :title
      t.text :description
      t.float :price
      t.integer :order_index
      t.boolean :is_heading

      t.timestamps
    end
  end
end
