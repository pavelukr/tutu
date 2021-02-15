class CreateRailwayCarriages < ActiveRecord::Migration[6.1]
  def change
    create_table :railway_carriages do |t|
      t.string :type_of_carriage
      t.integer :num_of_top_seats
      t.integer :num_of_bottom_seats

      t.timestamps
    end
  end
end
