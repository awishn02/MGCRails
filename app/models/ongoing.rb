class Ongoing < ActiveRecord::Base
  belongs_to :game
  attr_accessible :game_id, :udid
end
