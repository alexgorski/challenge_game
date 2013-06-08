class RosterPlayer < ActiveRecord::Base
  attr_accessible :name, :total_points, :roster_id, :player_id
  belongs_to :roster
  belongs_to :player
end
