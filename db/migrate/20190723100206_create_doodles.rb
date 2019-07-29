class CreateDoodles < ActiveRecord::Migration[5.2]
  def change
    create_table :doodles do |t|
      t.string :path
      t.string :description

      t.timestamps
    end
  end
end
