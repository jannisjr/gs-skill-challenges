require 'dish'
require 'menu'
require 'order'
require 'receipt'

RSpec.describe 'integration' do
  let(:menu) { Menu.new }
  let(:dish_one) { Dish.new("Margharita", 10.00) }
  let(:dish_two) { Dish.new("Calzone", 12.00) }
  let{:order} { Order.new }

  
  context "initialize" do
   it "populates a menu and rints it to screen, then asks for an order and stores user input" do
    menu.add_dish(dish_one)
    menu.add_dish(dish_two)
    order(menu)
    order.take_order

  end
end
