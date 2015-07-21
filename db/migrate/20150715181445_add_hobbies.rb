class AddHobbies < ActiveRecord::Migration
  def change
    add_column :characters, :birthday, :date, null: false
    add_column :characters, :hobby1_id, :integer, null: false
    add_column :characters, :hobby2_id, :integer, null: false
  end
end
