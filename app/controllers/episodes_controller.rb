class EpisodesController < ApplicationController
  def new
    @episode = Episode.new(:player_id => params[:id])
    @player = Player.find(params[:id])
  end

  def create
    @episode = Episode.new(params[:episode])
    if @episode.save
      @episode.update_points
      Player.update_total_points(@episode.player_id)
      redirect_to players_path
    else
      render 'new'
    end
  end

end
