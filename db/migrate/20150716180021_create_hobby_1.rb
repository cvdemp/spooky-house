class CreateHobby1 < ActiveRecord::Migration
  def change
    create_table :hobby_1s do |t|
      t.string :name, null: false, unique: true
    end
  end
end
