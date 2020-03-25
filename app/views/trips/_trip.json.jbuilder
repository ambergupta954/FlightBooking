json.extract! trip, :id, :aeroplane_id, :origin, :destination, :departure, :arrival, :date, :created_at, :updated_at
json.url trip_url(trip, format: :json)
