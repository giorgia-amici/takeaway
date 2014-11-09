class Order

	attr_accessor :dishes
	attr_reader :customer

	def initialize(customer)
		@dishes = {}
		@customer = customer
	end

	def empty?
		dishes.empty?
	end

	def add(dish, amount=1)
		dishes[dish.to_sym] = amount
	end

	def modify_quantity(dish)
		dishes.each_key{ |key| dishes[key] += 1  if key == dish.to_sym  }
	end

	def quantity(dish)
		dishes[dish.to_sym]
	end

	def remove(dish)
		dishes.each_key{ |key| dishes[key] -= 1 if key == dish.to_sym }
	end


end