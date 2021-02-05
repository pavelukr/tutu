class Route < ApplicationRecord
  validates :name, presence: true

  has_many :trains
=begin
  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
=end

  has_and_belongs_to_many :railway_stations, :join_table => 'railway_stations_routes'

end