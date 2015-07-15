class AddGameId < ActiveRecord::Migration
  def change
    add_column :characters, :game_id, :string
  end
end
