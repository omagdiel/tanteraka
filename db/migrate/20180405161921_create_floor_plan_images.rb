class CreateFloorPlanImages < ActiveRecord::Migration[5.1]
  def change
    create_table :floor_plan_images do |t|
      t.text :image
      t.references :floor_plan, foreign_key: true

      t.timestamps
    end
  end
end
