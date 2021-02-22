class Route < ApplicationRecord
  validates :name, presence: true

  validate :stations_count

  before_validation :set_name

  has_many :trains

  has_many :railway_stations_routes
  has_many :railway_stations, through: :railway_stations_routes
  scope :ordered_railway_stations, -> { joins(:railway_stations_routes).order('railway_stations_routes.position') }

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
