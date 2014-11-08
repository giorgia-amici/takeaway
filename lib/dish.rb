class Dish

	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def has_name?
		@name
	end

	def has_price?
		@price
	end

end