class League < ActiveRecord::Base
  attr_accessible :title, :season_id, :premier, :roster_attributes
  has_many :rosters
  accepts_nested_attributes_for :rosters, allow_destroy: true
  has_many :users, :through => :rosters
  belongs_to :season
end
