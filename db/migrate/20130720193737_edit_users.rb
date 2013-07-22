class EditUsers < ActiveRecord::Migration
  def up
      add_index :users, :ongoing_id
  end

  def down
  end
end
