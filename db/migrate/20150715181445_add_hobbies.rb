class AddHobbies < ActiveRecord::Migration
  def change
    add_column :characters, :birthday, :date
    add_column :characters, :hobby_1, :integer
    add_column :characters, :hobby_2, :integer
  end
end
