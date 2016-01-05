class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :firstname
      t.string :surname
      t.integer :birthdate
      t.timestamps null: false
    end
  end
end
