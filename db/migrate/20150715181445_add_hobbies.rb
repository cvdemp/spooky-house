class AddHobbies < ActiveRecord::Migration
  def change
    add_column :characters, :birthday, :date
    add_column :characters, :hobby_1_id, :integer
    add_column :characters, :hobby_2_id, :integer
  end
end
