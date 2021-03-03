class Route < ApplicationRecord
  validates :name, presence: true

  validate :stations_count

  before_create :set_name

  has_many :trains

  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes

  scope :with_station, -> (station) { Route.joins(:railway_stations).where('railway_stations.id = ?', station.id) }

  def self.find_routes(begin_station, last_station)
    Route.with_station(begin_station) &
      Route.with_station(last_station)
  end

  private

  def set_name
    self.name = "#{railway_stations.first.title} - #{railway_stations.last.title}"
  end

  def stations_count
    if railway_stations.size < 2
      errors.add(:base, "Route should contain at least 2 stations")
    end
  end
end
