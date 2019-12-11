class AddXCoordinateAndYCoordinateToDoodles < ActiveRecord::Migration[5.2]
  def change
    add_column :doodles, :x_coordinate, :integer
    add_column :doodles, :y_coordinate, :integer
  end
end
