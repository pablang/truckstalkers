class AddIsMenuToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :is_menu, :boolean
  end
end
