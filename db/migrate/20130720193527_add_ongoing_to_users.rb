class AddOngoingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ongoing_id, :integer
  end
end
