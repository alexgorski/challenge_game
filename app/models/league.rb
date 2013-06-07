class League < ActiveRecord::Base
  attr_accessible :title, :season, :premier
  has_many :rosters
  has_many :users, :through => :rosters
end
