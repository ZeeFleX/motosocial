class CreateBrakeTypes < ActiveRecord::Migration
  def change
    create_table :brake_types do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :front_brake_type_id, :integer
    add_column :features, :rear_brake_type_id, :integer
  end
end
