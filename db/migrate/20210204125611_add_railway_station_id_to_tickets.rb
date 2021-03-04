class AddRailwayStationIdToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :begin_station_id, :integer, foreign_key: true
    add_column :tickets, :end_station_id, :integer, foreign_key: true
  end
end
