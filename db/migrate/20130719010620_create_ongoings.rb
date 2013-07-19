class CreateOngoings < ActiveRecord::Migration
  def change
    create_table :ongoings do |t|
      t.integer :game_id
      t.string :udid

      t.timestamps
    end
  end
end
