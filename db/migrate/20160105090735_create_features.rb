class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :size_length
      t.integer :size_width
      t.integer :size_height
      t.integer :weight
      t.integer :wheelbase
      t.float :fuel_consumption
      t.integer :max_speed
      t.float :dynamic
      t.integer :engine_cylinders
      t.integer :engine_strokes
      t.integer :engine_displacement
      t.float :engine_compression
      t.integer :engine_gears
      t.integer :clearance
      t.float :fuel_capacity
      t.float :oil_capacity
      t.integer :front_brake_dia
      t.integer :rear_brake_dia
      t.string :front_tyre
      t.string :rear_tyre
      t.datetime :production_start
      t.datetime :production_end
      t.timestamps null: false
    end
    add_column :models, :feature_id, :integer
  end
end
