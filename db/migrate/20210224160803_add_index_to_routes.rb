class AddIndexToRoutes < ActiveRecord::Migration[6.1]
  def change
    add_index :routes, :name
  end
end
