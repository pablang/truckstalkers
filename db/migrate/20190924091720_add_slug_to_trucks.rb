class AddSlugToTrucks < ActiveRecord::Migration[5.2]
  def change
    add_column :trucks, :slug, :string
    add_index :trucks, :slug, unique: true
  end
end
