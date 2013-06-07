class Player < ActiveRecord::Base
  attr_accessible :name, :total_points, :roster_id
  has many :episodes
end
