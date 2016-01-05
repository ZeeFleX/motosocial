class ChangeBirthdateType < ActiveRecord::Migration

  def change
    reversible do |dir|
      change_table :profiles do |t|
        dir.up   { t.change :birthdate, :datetime }
        dir.down { t.change :birthdate, :integer }
      end
    end
  end

end
