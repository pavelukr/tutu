class Ticket < ApplicationRecord
  belongs_to :train
  belongs_to :user
  belongs_to :begin_station, class_name: "RailwayStation", foreign_key: :begin_station_id
  belongs_to :end_station, class_name: "RailwayStation", foreign_key: :end_station_id
  #Билет содержит информацию о (связан с) поезде, начальной и конечной станциях. Билет принадлежит пользователю
end
