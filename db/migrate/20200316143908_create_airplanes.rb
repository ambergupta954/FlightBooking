class CreateAirplanes < ActiveRecord::Migration[6.0]
  def change
    create_table :airplanes do |t|
      t.string :brand
      t.string :number

      t.timestamps
    end
  end
end
