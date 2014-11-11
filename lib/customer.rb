class Customer

	attr_reader :name
	attr_accessor :phone_no, :orders

	def initialize(name, number)
		@name = name
		@phone_no = number.to_s
		@orders = []
	end

	def change_no(new_number)
		@phone_no = new_number.to_s
	end

	def add_dish(dish)
		@orders << dish
	end

	def order_placed?
		!@orders.empty?
	end

	def confirmation_received?(message)
		message.send_text if order_placed?
	end

	

end