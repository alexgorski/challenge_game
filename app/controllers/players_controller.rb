class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
  def show
    @player = Player.find(params[:id])
    @episodes = @player.episodes
  end

end
