class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :info
      t.text :main_img
      t.text :img

      t.timestamps
    end
  end
end
