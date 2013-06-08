class League < ActiveRecord::Base
  attr_accessible :title, :season_id, :premier
  has_many :rosters
  has_many :users, :through => :rosters
  belongs_to :season
end
