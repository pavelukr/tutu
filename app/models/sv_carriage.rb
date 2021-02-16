class SVCarriage < RailwayCarriage
  validates :bottom_seats, presence: true
end