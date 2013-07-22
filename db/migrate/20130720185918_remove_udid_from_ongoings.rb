class RemoveUdidFromOngoings < ActiveRecord::Migration
  def up
  end

  def down
      drop_column :udid
  end
end
