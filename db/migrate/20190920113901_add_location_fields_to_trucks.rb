class AddLocationFieldsToTrucks < ActiveRecord::Migration[5.2]
  def change
    add_column :trucks, :z_id, :integer
    add_column :trucks, :price_range, :integer
    add_column :trucks, :latitude, :decimal
    add_column :trucks, :longitude, :decimal
    add_column :trucks, :address, :string
  end
end
