class CreateEngineFinalTransmissions < ActiveRecord::Migration
  def change
    create_table :engine_final_transmissions do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :engine_final_transmission_id, :integer
  end
end
