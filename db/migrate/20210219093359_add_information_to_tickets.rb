class AddInformationToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :first_name, :text
    add_column :tickets, :last_name, :text
    add_column :tickets, :middle_name, :text
    add_column :tickets, :passport, :text
  end
end
