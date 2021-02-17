class SeatCarriage < RailwayCarriage
  validates :seat_place, presence: true
end