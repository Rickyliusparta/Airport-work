class Flight

	attr_accessor :destination, :duration, :departure_time, :passengers
	attr_reader :capacity, :flight_number

	def initialize (destination, capacity, flight_number, duration, departure_time)
		@destination = destination
		@capacity = capacity
		@flight_number = flight_number
		@duration = duration
		@departure_time = departure_time
		@passengers = []

	end

	def add_passenger passenger

		@passengers.push(passenger)

	end

	def to_s
		# "Flight #{@flight_number} to #{@destination} on #{@departure_time}"
		"#{@flight_number}"
	end
end