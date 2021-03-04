class AddRailwayStationIdToTrains < ActiveRecord::Migration[6.1]
  def change
    add_column :trains, :current_station_id, :integer, foreign_key: true
    # add_belongs_to :trains, :railway_station
  end
end
