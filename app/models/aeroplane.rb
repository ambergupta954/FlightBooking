class Aeroplane < ApplicationRecord
    has_many :passengers
    has_many :trips


    validates :plane_type, presence: {message:": field cannot be empty"}
    validates :seats, presence: {message:": field cannot be empty"}
    validates :bc_row, presence: {message:": field cannot be empty"}
    validates :bc_column, presence: {message:": field cannot be empty"}
    validates :ec_row, presence: {message:": field cannot be empty"}
    validates :ec_column, presence: {message:": field cannot be empty"}
    validates :fc_row, presence: {message:": field cannot be empty"}
    validates :fc_column, presence: {message:": field cannot be empty"}
    validates :bc_fare, presence: {message:": field cannot be empty"}
    validates :ec_fare, presence: {message:": field cannot be empty"}
    validates :fc_fare, presence: {message:": field cannot be empty"}

    validate :check_seats

    def check_seats
        if fc_row != nil && fc_columns != nil && bc_row != nil && bc_column != nil 
          seat_count = (fc_row * fc_column) + (bc_row * bc_column) + (ec_row * ec_column)
          if seats != seat_count
             errors.add(:seats, "Please enter correct number of passenger seats")
          end
       end
    end

end
