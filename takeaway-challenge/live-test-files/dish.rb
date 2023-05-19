class Dish
  attr_reader :item, :price
  def initialize(item, price)
    @item = item
    @price = price.round(2)
  end
end
