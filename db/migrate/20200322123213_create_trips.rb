class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :aeroplane, null: false, foreign_key: true
      t.string :origin
      t.string :destination
      t.time :departure
      t.time :arrival
      t.date :date

      t.timestamps
    end
  end
end
