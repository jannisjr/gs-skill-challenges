require 'dish'

RSpec.describe Dish do
  let(:dish_one) { Dish.new("Margharita", 10.00) }
  let(:dish_two) { Dish.new("Calzone", 12.00) }
  context "initialize" do
    it "returns item and price inputed as hash" do
      expect(dish_one.make_hash).to eq  ({ "Margharita" => 10.00 })
    end
  end
end
