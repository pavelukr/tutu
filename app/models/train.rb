class Train < ApplicationRecord
  validates :number, presence: true

  has_many :tickets
  belongs_to :current_station, class_name: "RailwayStation", foreign_key: :current_station_id
  belongs_to :route
end
#Билет содержит информацию о (связан с) поезде, начальной и конечной станциях. Билет принадлежит пользователю
#   Пользователь может иметь произвольное кол-во билетов
#   Поезд содержит информацию о билетах на него.