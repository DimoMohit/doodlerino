class Doodle < ApplicationRecord
  belongs_to :user

  # { "top": { "x": 10, "y": 10 }, "bottom": { "x": 20, "y": 20 } }
  def self.bounded_by(top_left, bottom_right)
    # TODO: implement searching functionality
    self.where(x_coordinate: (top_left[:x]..bottom_right[:x]),
      y_coordinate: (top_left[:y]..bottom_right[:y]))
  end
end
