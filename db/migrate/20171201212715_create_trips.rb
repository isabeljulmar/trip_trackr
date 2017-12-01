class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :trip_name
      t.integer :trip_duration

      t.timestamps
    end
  end
end
