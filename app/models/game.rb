class Game < ActiveRecord::Base
  has_many :locations
  has_many :ongoings
  has_and_belongs_to_many :users
  attr_accessible :name, :user_id, :locations_attributes
  accepts_nested_attributes_for :locations
  accepts_nested_attributes_for :users
end
