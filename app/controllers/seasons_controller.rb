class SeasonsController < ApplicationController
  def index
    @seasons = Season.all
  end
  def show
    @season = Season.find(params[:id])
    @leagues = League.where(:season_id => @season.id).all
  end
end
