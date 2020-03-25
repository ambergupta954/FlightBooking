class Ticket < ApplicationRecord
  belongs_to :passenger
  belongs_to :trip
  accepts_nested_attributes_for :passenger, allow_destroy: true

  before_save :ticket_details

  def ticket_details

      selected_flight = Trip.find(trip_id)
      seatarray = seat_number.split('.')
      self.seat_class = seatarray[0]
      self.seat_number = seatarray[1]
  
      self.pnr = "#{seat_class[0..1].upcase}"+"#{seat_number}"+"F"+"#{trip_id}"+"P"+"#{passenger_id}"

      seats_booked = Ticket.where(trip_id: trip).count
      total_seats = trip.aeroplane.seats 
      # if seats_booked >= 1/2*total_seats
      #    self.total_amount = flight.aeroplane.business_base_fare + 10/100*flight.aeroplane.business_base_fare
      if seatarray[0].casecmp("Business")==0 && seats_booked >= total_seats/2
        self.total_amount= trip.aeroplane.bc_fare + flight.aeroplane.bc_fare/10
      elsif seatarray[0].casecmp("First Class")==0 && seats_booked >= total_seats/2
        self.total_amount= trip.aeroplane.fc_fare + flight.aeroplane.fc_fare/10
      elsif seatarray[0].casecmp("Economy")==0 && seats_booked >= total_seats/2
        self.total_amount= trip.aeroplane.ec_fare + flight.aeroplane.ec_fare/10
      end

      if seatarray[0].casecmp("Business")==0 && seats_booked < total_seats/2
        self.total_amount= trip.aeroplane.bc_fare
      elsif seatarray[0].casecmp("First Class")==0 && seats_booked < total_seats/2
        self.total_amount= trip.aeroplane.fc_fare
      elsif seatarray[0].casecmp("Economy")==0 && seats_booked < total_seats/2
        self.total_amount= trip.aeroplane.ec_fare
      end

  end


end
