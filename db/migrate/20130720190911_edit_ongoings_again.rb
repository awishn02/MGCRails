class EditOngoingsAgain < ActiveRecord::Migration
  def up
      remove_column :ongoings, :user_id
      add_column :ongoings, :user_id, :integer
  end

  def down
  end
end
