json.extract! ticket, :id, :passenger_id, :trip_id, :seat_class, :seat_number, :pnr, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
