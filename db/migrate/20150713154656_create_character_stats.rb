class CreateCharacterStats < ActiveRecord::Migration
  def change
    create_table :character_stats do |t|
      t.integer :character_id, null: false
      t.integer :stat_id, null: false
      t.integer :value, null: false
      t.integer :level, null: false
    end
  end
end
