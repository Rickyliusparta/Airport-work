class FlightMenu

	attr_reader :flightNumber

	def initialize flightNumber
		@flightNumber = flightNumber
	end

	def flight_menu_system
		#(destination, capacity, code, duration, departure_time)

		puts "What is your destination"
		destination = gets.chomp
		puts "what is the capacity of the plane"
		capacity = gets.chomp.to_i
		puts "what is the flight code"
		code = gets.chomp
		puts "what is the duration of the flight"
		duration = gets.chomp
		puts "what is the departure date? (YYYY-MM-DD)"
		departure_date = Date.parse(gets.chomp)

		flightNumber = Flight.new(destination, capacity, code, duration, departure_date)
		airport.add_flight flightNumber

	end
	
end