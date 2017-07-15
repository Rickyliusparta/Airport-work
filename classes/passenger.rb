class Passenger
	attr_accessor :first_Name, :surname, :dob, :passport_number, :flight_number


	def initialize (first_Name, surname, dob, passport_number, flight_number)

		@first_Name = first_Name
		@surname = surname
		@dob = dob
		@passport_number = passport_number
		@flight_number = flight_number

	end
	

	def to_s
		"Passenger: #{@first_Name} #{@dsurname} on flight #{@flight_number}"
	end

end