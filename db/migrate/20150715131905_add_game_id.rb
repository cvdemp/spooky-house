class AddGameId < ActiveRecord::Migration
  def change
    add_column :characters, :game_id, :integer
  end
end
