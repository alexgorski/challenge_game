class LeaguesController < ApplicationController
  
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

end
