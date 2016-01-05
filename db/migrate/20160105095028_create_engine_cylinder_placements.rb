class CreateEngineCylinderPlacements < ActiveRecord::Migration
  def change
    create_table :engine_cylinder_placements do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :engine_cylinder_placement_id, :integer
  end
end
