class RosterPlayer < ActiveRecord::Base
  attr_accessible :name, :total_points, :roster_id, :player_id
  belongs_to :roster
  
  def self.sync_names(league)
    players = Hash.new
    players = Player.where(:season_id => league.season_id).collect {|c| players[c.id] = c.name}
    league.rosters.each do |roster|
      roster.roster_players.each do |rp|
        rp.name = players[rp.player_id-1]
      end
    end
    league.save
  end
  def self.update_total_points(player_id, player_points)
    @players = RosterPlayer.where(:player_id => player_id).all
    @players.each {|p| p.total_points = player_points; p.save}
  end
end
