class CreateStarterSystems < ActiveRecord::Migration
  def change
    create_table :starter_systems do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :starter_system_id, :integer
  end
end
