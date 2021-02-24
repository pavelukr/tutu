class AddIndexToRailwayStationsRoutes < ActiveRecord::Migration[6.1]
  def change
    add_index :railway_stations_routes, :position
    add_index :railway_stations_routes, [:railway_station_id, :position]
  end
end
