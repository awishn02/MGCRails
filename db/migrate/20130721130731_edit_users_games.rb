class EditUsersGames < ActiveRecord::Migration
  def up
      add_column :users, :game_id, :integer
      add_index :users, :game_id
  end

  def down
  end
end
