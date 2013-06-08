class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      if @user.role == "Contestant"
        redirect_to user_path(@user), notice: "Account created!"
      else
        render "new"
      end
    else
      render "new"
    end
  end
  def show
    @user = User.find(params[:id])
    @rosters = Roster.where(:user_id => @user.id).all.sort_by{|r| r.league_id}
    league_ids = @rosters.map {|r| r.league_id}
    @leagues = League.where(:id => league_ids).all.sort_by{|l| l.id }
  end

end
