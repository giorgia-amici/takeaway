require 'customer'

describe Customer do

	let(:customer) { Customer.new(:name, :num) }
	let(:carte) { double :carte}
	let(:dish) { double :dish }
	let(:message) { double :message, :send_text => true  }
	
it 'has a name' do
	expect(customer.name).not_to be nil
end

it 'has a phone number' do
	expect(customer.phone_no).not_to be nil
end

it 'can cange the phone number in case provided the wrong one' do
	expect(customer.phone_no).not_to be nil
	customer.change_no(:new_num)
	expect(customer.phone_no).not_to be nil
end

it 'can add dishes to the order' do
	expect(customer.orders).not_to be nil
	customer.add_dish(dish)
	expect(customer.orders).to eq([dish])
end

it 'places an order' do
customer.add_dish(dish)
expect(customer.orders).to eq([dish])
expect(customer.order_placed?).to be true
end

it 'receives order placed confirmation texts' do
customer.add_dish(dish)
expect(customer.orders).to eq([dish])
expect(customer.order_placed?).to be true
expect(customer.confirmation_received?(message)).to be true
end
	
end