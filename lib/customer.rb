class Customer

	attr_reader :name
	attr_accessor :phone_no, :order

	def initialize(name, number)
		@name = name
		@phone_no = number.to_s
		@order = []
	end

	def change_no(new_number)
		@phone_no = new_number.to_s
	end

	def choose_dish(menu, dish)
		menu.each{ |plate| order << plate if plate == dish }
	end

	def total_due

	end

	def paid?

	end
	


end