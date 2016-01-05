class CreateEngineTypes < ActiveRecord::Migration
  def change
    create_table :engine_types do |t|
      t.string :name
      t.text :description
      t.timestamps null: false
    end
    add_column :features, :engine_type_id, :integer
  end
end
