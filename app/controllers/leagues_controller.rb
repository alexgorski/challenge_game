class LeaguesController < ApplicationController
  def new
    @league = League.new
  end

  def create
    @league = League.new(params[:league])
    if @league.save
      redirect_to league_path(@league.id)
    else
      render 'new'
    end
  end
  
  def index
    @leagues = League.all.sort
  end
  def show
    if current_user
      @league = League.find(params[:id])
      @season = Season.find(@league.season_id)
      @rosters = Roster.where(:league_id => @league.id).all
    else
      redirect_to new_user_path
    end
  end
  def edit
    @league = League.find(params[:id])
    @rosters = Roster.where(:league_id => @league.id).all
    @season = Season.find(@league.season_id)
    @players = Player.where(:season_id => @season.id).all
    @number_of_spots = (@players.size / @league.rosters.size).round
  
  end

end
