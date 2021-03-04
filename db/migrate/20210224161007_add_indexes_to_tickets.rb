class AddIndexesToTickets < ActiveRecord::Migration[6.1]
  def change
    add_index :tickets, :first_name
    add_index :tickets, :last_name
    add_index :tickets, :passport
    add_index :tickets, :begin_station_id
    add_index :tickets, :end_station_id
    add_index :tickets, [:begin_station_id, :end_station_id]
  end
end
