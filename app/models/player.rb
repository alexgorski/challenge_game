class Player < ActiveRecord::Base
  attr_accessible :name, :total_points, :season_id
  has_many :episodes
  belongs_to :season
end
