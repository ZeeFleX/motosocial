class CreateModels < ActiveRecord::Migration
  def change

    create_table :models do |t|
      t.string :name
      t.integer :brand_id
      t.timestamps null: false
    end

    create_table :brands do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :models_profiles do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :model, index: true
    end

  end
end
