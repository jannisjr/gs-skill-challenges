require_relative 'dish'
require_relative  'menu'
require_relative  'order'

class Receipt
  def initialize(order)
    @order = order.selection
  end

  def print_receipt
    itemised_list = @order.each do |dish|
      puts "#{dish.item} #{sprintf("£%.2f", dish.price)}"
    end
    total = []
    @order.each do |dish|
      total << dish.price
    end
    grand_total = total.sum
    puts "GRAND TOTAL: #{sprintf("£%.2f", grand_total)}"
  end
end

# menu = Menu.new
# dish_one = Dish.new("Margharita", 10.00)
# dish_two = Dish.new("Calzone", 12.00)
# menu.add_dish(dish_one)
# menu.add_dish(dish_two)
# menu.print_menu
# order = Order.new(menu)
# order.take_order
# receipt = Receipt.new(order)
# receipt.print_receipt