class AddHobbies < ActiveRecord::Migration
  def change
    add_column :characters, :birthday, :date
    add_column :characters, :hobby1_id, :integer
    add_column :characters, :hobby2_id, :integer
  end
end
