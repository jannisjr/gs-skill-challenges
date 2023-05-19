require_relative 'dish'
require_relative  'menu'
require_relative  'order'

class Receipt
  def initialize(order, io = $stdout)
    @order = order.selection
    @io = io
  end

  def print_receipt
    @io.puts "Here is your receipt:"
    itemised_list = @order.each do |dish|
      @io.puts "#{dish.item} #{sprintf("£%.2f", dish.price)}"
    end
    total = []
    @order.each do |dish|
      total << dish.price
    end
    grand_total = total.sum
    @io.puts "GRAND TOTAL: #{sprintf("£%.2f", grand_total)}"
  end
end

# menu = Menu.new
# dish_one = Dish.new("Margharita", 10.00)
# dish_two = Dish.new("Calzone", 12.00)
# menu.add_dish(dish_one)
# menu.add_dish(dish_two)
# order = Order.new(menu)
# order.take_order
# p order#selection is blank outside of the program. Need to find out why
# receipt = Receipt.new(order)
# receipt.print_receipt
