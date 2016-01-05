class CreateEngineFuelSystems < ActiveRecord::Migration
  def change
    create_table :engine_fuel_systems do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :engine_fuel_system_id, :integer
  end
end
