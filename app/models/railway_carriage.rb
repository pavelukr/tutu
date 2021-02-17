class RailwayCarriage < ApplicationRecord
  TYPES = %w(CoupeCarriage EconomyCarriage SVCarriage SeatCarriage)

  belongs_to :train

  validates :number, :type, :train, presence: true
  validates :number, uniqueness: { scope: :train_id }

before_validation :add_number

  def add_number
    self.number ||= self.max_number + 1
  end

  def max_number
    train.railway_carriages.pluck(:number).max || 0
  end
end
