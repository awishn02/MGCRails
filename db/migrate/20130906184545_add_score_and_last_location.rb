class AddScoreAndLastLocation < ActiveRecord::Migration
  def up
    add_column :ongoings, :score, :integer
    add_column :ongoings, :location, :string
  end

  def down
  end
end
