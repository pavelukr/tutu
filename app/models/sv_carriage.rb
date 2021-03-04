class SvCarriage < RailwayCarriage
  validates :bottom_seats, presence: true
end