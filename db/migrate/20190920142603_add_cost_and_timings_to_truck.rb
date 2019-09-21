class AddCostAndTimingsToTruck < ActiveRecord::Migration[5.2]
  def change
    add_column :trucks, :timings, :string
    add_column :trucks, :average_cost_for_two, :integer
  end
end
