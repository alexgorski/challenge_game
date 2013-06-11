class EpisodesController < ApplicationController
  def new
    @episode = Episode.new(:player_id => params[:format])
    @player = Player.find(params[:format])
  end

  def create
    binding.pry
    @episode = Episode.new(params[:episode])
    if @episode.save
      redirect_to players_path
    else
      render 'new'
    end
  end

end
