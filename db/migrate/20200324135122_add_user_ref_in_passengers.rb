class AddUserRefInPassengers < ActiveRecord::Migration[6.0]
  def change
    add_reference :passengers, :user, foreign_key: true
  end
end
