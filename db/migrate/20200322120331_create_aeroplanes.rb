class CreateAeroplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :aeroplanes do |t|
      t.string :plane_type
      t.integer :seats
      t.integer :bc_row
      t.integer :bc_column
      t.integer :bc_fare
      t.integer :fc_row
      t.integer :fc_column
      t.integer :fc_fare
      t.integer :ec_row
      t.integer :ec_column
      t.integer :ec_fare

      t.timestamps
    end
  end
end
