class Airport
	# attr_accessor :name
	attr_accessor :flight
	attr_reader :name 

	def initialize name
		@name = name 
		@flight = []
	end

	def add_flight flight
		@flight.push flight
	end
end