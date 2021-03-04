class AddIndexToRailwayStationsRoutes < ActiveRecord::Migration[6.1]
  def change
    add_index :railway_stations_routes, :position
  end
end
