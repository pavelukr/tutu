class Ticket < ApplicationRecord
  validates :first_name, :last_name, :middle_name, :passport, presence: true
  belongs_to :train
  belongs_to :user
  belongs_to :begin_station, class_name: "RailwayStation", foreign_key: :begin_station_id
  belongs_to :end_station, class_name: "RailwayStation", foreign_key: :end_station_id
end
