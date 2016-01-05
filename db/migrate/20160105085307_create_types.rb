class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.timestamps null: false
    end
    add_column :models, :type_id, :integer
  end
end
