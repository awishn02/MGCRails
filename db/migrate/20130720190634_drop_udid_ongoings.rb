class DropUdidOngoings < ActiveRecord::Migration
  def up
      remove_column :ongoings, :udid
  end

  def down
  end
end
