class CreateIgnitionSystems < ActiveRecord::Migration
  def change
    create_table :ignition_systems do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :ignition_system_id, :integer
  end
end
