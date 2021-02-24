class AddIndexesToRailwayCarriages < ActiveRecord::Migration[6.1]
  def change
    add_index :railway_carriages, [:id, :type]
    add_index :railway_carriages, :number
  end
end
