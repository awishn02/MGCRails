class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :game_id
      t.float :latitude
      t.float :longitude
      t.string :name

      t.timestamps
    end
  end
end
