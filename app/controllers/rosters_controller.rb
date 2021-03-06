class RostersController < ApplicationController
  def new
    @roster = Roster.new(:user_id => current_user.id, :league_id => params[:league_id])
  end
  
  def create
    @roster = Roster.new(params[:roster])
    if @roster.save
      redirect_to roster_path(@roster.id)
    else
      render 'new'
    end
  end

  def show
    @roster = Roster.find(params[:id])
    @roster_players = RosterPlayer.where(roster_id: @roster.id).all
  end

end
