class Player < ActiveRecord::Base
  attr_accessible :name, :total_points, :season_id
  has many :episodes
  belongs_to :season
end
