require_relative "classes/airport.rb"
require_relative "classes/flight.rb"
require_relative "classes/passenger.rb"
# require_relative "classes/plane.rb"
require_relative "classes/flight-menu.rb"
require 'date'

@airport = Airport.new "Leeds Bradford International Airport"

flight_1 = Flight.new("Benidorm", 2, "OH299", 4.2, Date.new(2017, 06, 01))
# 
@airport.add_flight	flight_1

def create_flight 

	puts "What is your destination"
	destination = gets.chomp
	puts "what is the capacity of the plane"
	capacity = gets.chomp.to_i
	puts "what is the flight number"
	flight_number = gets.chomp
	puts "what is the duration of the flight"
	duration = gets.chomp
	puts "what is the departure date? (YYYY-MM-DD)"
	departure_date = Date.parse(gets.chomp)

	@flight = Flight.new(destination, capacity, flight_number, duration, departure_date)

	@airport.add_flight @flight
	menu
end 


def show_flights

	array_length = @airport.flights.length
	for i in 0..array_length-1
		puts "Flight number " + "#{i}" + " #{@airport.flights[i]}" + "\n"
	end
end

def create_passenger

	# (first_Name, surname, dob, passport_number, flight_number)

	puts "what is your first name"
	first_name = gets.chomp
	puts "what is your surname"
	surname = gets.chomp
	puts "what is your Date of Birth? (YYYY-MM-DD)"
	dob = Date.parse(gets.chomp)
	puts "what is your passport number"
	passport_number = gets.chomp
	puts "Please pick which flight you are on"
	show_flights
	@pass_flight = @airport.flights[gets.chomp.to_i]

	new_passenger = Passenger.new(first_name, surname, dob, passport_number, @pass_flight)
	@pass_flight.add_passenger new_passenger
	menu

end


def menu

	looping = true
	while looping
	puts "What would you like to do? (C)reate a flight. See all (F)lights. See all (P)assengers. C(R)eate passenger. (A)dd passenger to flight"

	choice = gets.chomp.downcase

		case choice
		when "c"
			create_flight
		when "f"
			puts @airport.flight
		when "p"
			puts @pass_flight.passengers
		when "r"
			create_passenger
		when "a"
			puts "add_passenger"
		when "quit"
			looping = false
		else "invalid input"
			
		end
	end
end

menu

# if menu != "quit"
# 	menu
# end
