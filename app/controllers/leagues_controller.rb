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
    @season = Season.find(@league.season_id)
    @players = Player.where(:season_id => @season.id).all
    @number_of_roster_players = (@players.size / @league.rosters.size).round
    @rosters = Roster.where(:league_id => @league.id).all
    # need to build roster players
    
    @league.rosters.each do |rost|
      @number_of_roster_players.times {|n| rost.roster_players.build}
    end
  end
  
  def update
    @league = League.find(params[:id])
    @league.rosters.each_with_index do |roster, rindex|
      params[:league][:rosters_attributes][rindex.to_s][:roster_players_attributes].each_with_index do |attribute, aindex|
      
      roster.roster_players.build(:player_id => attribute[1][:id])
      end
    end
    #call a method to populate roster_players names from players
    if @league.save
      RosterPlayer.sync_names(@league)
      redirect_to action: :show, id: @league.id
    else
      edirect_to action: :new, id: @league.id
    end
  end
end
