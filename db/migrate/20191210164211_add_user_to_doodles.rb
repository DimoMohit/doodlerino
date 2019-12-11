class AddUserToDoodles < ActiveRecord::Migration[5.2]
  def change
    add_reference :doodles, :user, foreign_key: true
  end
end
