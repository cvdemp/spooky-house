class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :name, null: false
    end
  end
end
