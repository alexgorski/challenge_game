class Player < ActiveRecord::Base
  attr_accessible :name, :total_points, :season_id
  has_many :episodes
  belongs_to :season

  def self.update_total_points(id)
    @player = Player.find(id)
    @player.total_points = 0 if @player.total_points == nil
    @player.episodes.each {|p| @player.total_points += p.total_points}
    @player.save
    RosterPlayer.update_total_points(@player.id, @player.total_points)
  end

end
