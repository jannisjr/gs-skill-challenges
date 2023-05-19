require 'order'
require 'menu'
require 'dish'
require 'receipt'

RSpec.describe Order do
  let(:menu) { Menu.new }
  let(:dish_one) { Dish.new("Margharita", 10.00) }
  let(:dish_two) { Dish.new("Calzone", 12.00) }
  let(:io) { double(:io) }
  let(:order) { Order.new(menu, io) }
  let(:receipt) { Receipt.new(order, io) }

  context "integration" do

    it "Populates a menu and prints it to the screen, then asks for an order and returns the order so far with multiple items. An itemised receipt is then generated" do
      menu.add_dish(dish_one)
      menu.add_dish(dish_two)

      allow(io).to receive(:puts) # Stubbing puts to avoid unnecessary output in the test
      allow(io).to receive(:gets).and_return("1", "2", "1", "1", "") # Stubbing user input to select dish 1 and then provide an empty input to exit the loop
      
      expect(io).to receive(:puts).with("Select the number of the dish you'd like to order and press return. When you're done, press return again")
      expect(io).to receive(:puts).with("You have ordered:")
      expect(io).to receive(:puts).with("Margharita")
      expect(io).to receive(:puts).with("Calzone")
      expect(io).to receive(:puts).with("Margharita")
      expect(io).to receive(:puts).with("Margharita")
      order.take_order
      expect(io).to receive(:puts).with("Here is your receipt:")
      expect(io).to receive(:puts).with("Margharita £10.00")
      expect(io).to receive(:puts).with("Calzone £12.00")
      expect(io).to receive(:puts).with("Margharita £10.00")
      expect(io).to receive(:puts).with("Margharita £10.00")
      expect(io).to receive(:puts).with("GRAND TOTAL: £42.00")
      receipt.print_receipt
    end
  end
end