require 'dish'

describe Dish do 
	     let(:plate)                     {Dish.new(:name, :price)}

it 'has a name' do
	expect(plate).to have_name
end

it 'can not to have a name' do
	expect(plate.name).not_to be nil
end

it 'has a price' do
	expect(plate).to have_price
end

it 'can not to have a price' do
	expect(plate.price).not_to be nil
end

	
end