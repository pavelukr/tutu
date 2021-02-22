class CoupeCarriage < RailwayCarriage
  validates :top_seats, :bottom_seats, presence: true
end