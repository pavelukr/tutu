class RailwayStation < ApplicationRecord
  validates :title, presence: true

  has_many :trains, foreign_key: :current_station_id
  has_many :tickets, foreign_key: :begin_station_id
  has_many :tickets, foreign_key: :end_station_id
=begin
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
=end

  has_and_belongs_to_many :routes, :join_table => 'railway_stations_routes'

end
