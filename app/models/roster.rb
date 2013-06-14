class Roster < ActiveRecord::Base
  attr_accessible :league_id, :user_id, :name, :total_points, :roster_players_attributes
  has_many :roster_players
  accepts_nested_attributes_for :roster_players, allow_destroy: true
  belongs_to :league
  belongs_to :user

  validates :league_id, :user_id, :presence => true
end
