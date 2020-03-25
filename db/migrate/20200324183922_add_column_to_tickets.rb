class AddColumnToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :total_amount, :bigint
  end
end
