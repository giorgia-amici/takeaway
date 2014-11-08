require 'customer'

describe Customer do

	let(:customer) { Customer.new(:name, :num) }
	let(:menu) { double :menu }
	let(:dish) { double :dish }
	
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

it 'can select dishes from the menu' do
	customer.choose_dish(menu,dish)
	expect(customer.order).to be([dish])
end

it 'has an order that is a list of dishes with price'

it 'can ask for the total bill'

it 'has to pay a total'

it 'receives order placed confirmation texts'



	
end