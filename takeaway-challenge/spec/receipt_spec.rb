require 'dish'
require 'menu'
require 'order'

RSpec.describe 'integration' do
  let(:menu) { Menu.new }
  let(:dish_one) { Dish.new("Margharita", 10.00) }
  let(:dish_two) { Dish.new("Calzone", 12.00) }
  let(:order) { Order.new }

  context "initialize" do
    it "populates a menu and rints it to screen, then asks for an order and stores user input" do
      io = double(:io)
      allow(io).to receive(:puts) # Stubbing puts to avoid unnecessary output in the test
      allow(io).to receive(:gets).and_return("1", "2", "1", "1", "") # Stubbing user input to select dish 1 and then provide an empty input to exit the loop
      
      order = Order.new(menu, io)

      expect(io).to receive(:puts).with("Select the number of the dish you'd like to order and press return. When you're done, press return again")
      expect(io).to receive(:puts).with("You have ordered:")
      expect(io).to receive(:puts).with("Margharita")
      expect(io).to receive(:puts).with("Calzone")
      expect(io).to receive(:puts).with("Margharita")
      expect(io).to receive(:puts).with("Margharita")
      
      order.take_order
      expect(io).to receive(:puts).with("Margharita")
      receipt = Receipt.new(order, io)
      expect(receipt.print_receipt)
    end
  end
end