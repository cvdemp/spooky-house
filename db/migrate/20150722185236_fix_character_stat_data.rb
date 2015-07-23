class FixCharacterStatData < ActiveRecord::Migration
  def change
    add_column :stats, :character_id, :integer
    add_column :stats, :value, :integer
    add_column :stats, :level, :integer
    
    drop_table :character_stats
  end
end
