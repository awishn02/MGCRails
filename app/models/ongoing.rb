class Ongoing < ActiveRecord::Base
  belongs_to :game
  has_many :users
  attr_accessible :game_id, :user_id
  accepts_nested_attributes_for :users
end
