json.extract! aeroplane, :id, :plane_type, :seats, :bc_row, :bc_column, :bc_fare, :fc_row, :fc_column, :fc_fare, :ec_row, :ec_column, :ec_fare, :created_at, :updated_at
json.url aeroplane_url(aeroplane, format: :json)
