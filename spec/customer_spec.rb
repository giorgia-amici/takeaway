require 'customer'

describe Customer do

	let(:customer) { Customer.new(:name, :num) }

it 'has a name' do
	expect(customer.name).not_to be nil
end

it 'has a phone number' do
	expect(customer.phone_no).not_to be nil
end

it 'can cange the phone number in case provided the wrong one' do

end

it 'can select dishes from the menu'

it 'has a order that is a list of dishes with price'

it 'can ask for the total bill'

it 'has to pay a total'




	
end