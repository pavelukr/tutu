class AddTrainIdToRailwayCarriages < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :railway_carriages, :train
  end
end
