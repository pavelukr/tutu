class AddIndexesToRailwayStations < ActiveRecord::Migration[6.1]
  def change
    add_index :railway_stations, :title
  end
end
