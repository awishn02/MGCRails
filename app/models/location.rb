class Location < ActiveRecord::Base
  attr_accessible :game_id, :latitude, :longitude, :name
  belongs_to :game
end
