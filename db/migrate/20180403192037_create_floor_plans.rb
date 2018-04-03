class CreateFloorPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :floor_plans do |t|
      t.string :title
      t.text :info
      t.text :main_img
      t.text :img

      t.timestamps
    end
  end
end
