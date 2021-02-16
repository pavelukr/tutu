class CreateRailwayCarriages < ActiveRecord::Migration[6.1]
  def change
    create_table :railway_carriages do |t|
      t.string :type_carriage
      t.integer :number
      t.integer :top_seats
      t.integer :bottom_seats
      t.integer :side_top_seats
      t.integer :side_bottom_seats
      t.integer :seat_place

      t.timestamps
    end
  end
end
