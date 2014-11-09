class Menu

attr_accessor :menu

def initialize
	@menu = []
end

def add_dish(dish)
	@menu << dish
end

def remove_dish(dish)
	@menu.delete(dish)
end


end

#hash.values.inject(0){ |memo, ele| memo + ele  }