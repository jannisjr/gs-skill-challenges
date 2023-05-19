require 'menu'
require 'dish'

RSpec.describe Menu do
  let(:menu) { Menu.new }
  let(:dish_one) { Dish.new("Margharita", 10.00) }
  let(:dish_two) { Dish.new("Calzone", 12.00) }
  context 'initialize' do
    it "adds a dish to the menu, returns the dish with index" do
      menu.add_dish(dish_one)
      expect(menu.print_menu).to eq (["1. Margharita £10.00"])
    end
    it "adds multiple dishes to the menu, returns the dishes with index" do
      menu.add_dish(dish_one)
      menu.add_dish(dish_two)
      expect(menu.print_menu).to eq (["1. Margharita £10.00", "2. Calzone £12.00"])
    end
  end
end
