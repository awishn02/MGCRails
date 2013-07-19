class Game < ActiveRecord::Base
  has_many :locations
  has_many :ongoings
  attr_accessible :name, :udid, :locations_attributes
  accepts_nested_attributes_for :locations
end
