class AddPositionToFloorPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :floor_plans, :position, :integer
  end
end
