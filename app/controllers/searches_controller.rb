class SearchesController < ApplicationController

  def show
  end

  def search
    @begin_station = RailwayStation.find(params[:begin_station])
    @end_station = RailwayStation.find(params[:end_station])
    @route = Route.find_routes(@begin_station, @end_station)
  end
end
