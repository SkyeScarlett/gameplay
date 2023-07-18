class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.integer :scene_id, null: false
      t.string :description
      t.json :required_stats, default: {}
      t.json :gained_stats, default: {}
      t.integer :target_scene_id

      t.timestamps

      t.index :scene_id
    end
  end
end
