class Customer

	attr_reader :name
	attr_accessor :phone_no

	def initialize(name, number)
		@name = name
		@phone_no = number
	end

end