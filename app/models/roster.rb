class Roster < ActiveRecord::Base
  attr_accessible :league_id, :user_id, :total_points
  has_many :players

  validates :league_id, :presence => true
  validates :employer_id, :presence => true
end
