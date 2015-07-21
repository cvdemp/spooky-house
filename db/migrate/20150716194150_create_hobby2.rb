class CreateHobby2 < ActiveRecord::Migration
  def change
    create_table :hobby2s do |t|
      t.string :name, null: false, unique: true
    end
  end
end
