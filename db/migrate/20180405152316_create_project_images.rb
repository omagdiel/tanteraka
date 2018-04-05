class CreateProjectImages < ActiveRecord::Migration[5.1]
  def change
    create_table :project_images do |t|
      t.text :image
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
