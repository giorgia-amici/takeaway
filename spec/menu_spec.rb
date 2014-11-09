require 'menu'

describe Menu do
let(:carte) { Menu.new }
let(:dish)  { double :dish, has_price?: true }

it 'is a hash of dishes and prices' do
	expect(carte.menu).to be_an_instance_of(Array)
end

it 'can add dishes' do
	carte.add_dish(:dish)
	expect(carte.menu.size).to be(1)
end

it 'can remove dishes' do
	carte.add_dish(:dish)
	expect(carte.menu.size).to be(1)
	carte.remove_dish(:dish)
	expect(carte.menu.size).to be(0)
end













	
end