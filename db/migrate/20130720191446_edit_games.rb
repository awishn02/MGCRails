class EditGames < ActiveRecord::Migration
  def up
      remove_column :games, :udid
      add_column :games, :user_id, :integer
  end

  def down
  end
end
