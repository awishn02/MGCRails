class User < ActiveRecord::Base
  attr_accessible :username, :email, :ongoing_id, :game_id
  belongs_to :ongoing
  has_and_belongs_to_many :games
end
