class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :passenger, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true
      t.string :seat_class
      t.string :seat_number
      t.string :pnr

      t.timestamps
    end
  end
end
