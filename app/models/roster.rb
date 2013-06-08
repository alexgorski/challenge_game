class Roster < ActiveRecord::Base
  attr_accessible :league_id, :user_id, :name, :total_points
  has_many :roster_players

  validates :league_id, :presence => true
  validates :user_id, :presence => true
end
