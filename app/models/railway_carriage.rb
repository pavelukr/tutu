class RailwayCarriage < ApplicationRecord
  validates :num_of_top_seats, presence: true
  validates :num_of_bottom_seats, presence: true
  validates :num_of_bottom_seats, numericality: { only_integer: true }
  validates :num_of_top_seats, numericality: { only_integer: true }

  belongs_to :train
end
