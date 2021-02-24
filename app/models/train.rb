class Train < ApplicationRecord
  validates :number, presence: true

  has_many :tickets
  has_many :railway_carriages, -> (train) { order("number #{train.order_carriage ? 'ASC' : 'DESC'}") }

  belongs_to :current_station, class_name: "RailwayStation", foreign_key: :current_station_id
  belongs_to :route

  validates :order_carriage, inclusion: { in: [true, false] }

  def order_carriage
    true
  end

  def number_of_seats(type_of_carriage, type_of_seat)
    railway_carriages.where(type_carriage: type_of_carriage.to_sym).sum(type_of_seat.to_sym)
  end
end