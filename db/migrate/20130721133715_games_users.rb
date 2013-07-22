class GamesUsers < ActiveRecord::Migration
  def up
      create_table :games_users, :id => false do |t|
          t.references :game, :user
        end
      add_index :games_users, [:game_id, :user_id]
  end

  def down
  end
end
