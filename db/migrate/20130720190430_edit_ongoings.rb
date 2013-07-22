class EditOngoings < ActiveRecord::Migration
  def up
      add_column :ongoings, :user_id, :integer
  end

  def down
      remove_column :ongoings, :udid
  end
end
