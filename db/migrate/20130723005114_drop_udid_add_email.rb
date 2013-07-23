class DropUdidAddEmail < ActiveRecord::Migration
  def up
    remove_column :users, :udid
    add_column :users, :email, :string
  end

  def down
  end
end
