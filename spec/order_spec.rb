require 'order'

describe Order do
 
let(:order)                   {  Order.new(customer)        }
let(:customer)                {  double :customer           } 
let(:dish)                    {  double :dish, to_sym: true }
  

 it "is unique for each customer" do
 	expect(order.customer).not_to be nil
 end

 it 'does not contain dishes when initialized' do
 	expect(order.dishes).to be_empty
 end

 it 'can contain dishes' do
 	expect(order.dishes).to be_empty
 	order.add(dish, :amount)
 	expect(order.dishes).not_to be_empty
 end

 it 'can modify the amount of a dish' do
 	expect(order.dishes).to be_empty
 	order.add(dish)
 	expect(order.dishes[dish.to_sym]).to eq(1)
 	order.modify_quantity(dish)
	expect(order.dishes[dish.to_sym]).to eq(2) 	
 end

 it 'knows the quantity of a dish' do
 	expect(order.dishes).to be_empty
 	order.add(dish)
 	expect(order.dishes).not_to be_empty
 	order.quantity(dish)
  expect(order.dishes[dish.to_sym]).to be(1)
 end

 it 'can remove dishes' do
 	order.add(dish)
 	expect(order.dishes).not_to be_empty
  order.quantity(dish)
  expect(order.dishes[dish.to_sym]).to be(1)
  order.remove(dish)
  expect(order.dishes[dish.to_sym]).to be(0)
 end
















end