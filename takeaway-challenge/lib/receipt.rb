require_relative 'dish'
require_relative  'menu'
require_relative  'order'

class Receipt
  def initialize(order)
    @order = order.selection
    puts "printing from receipt initalizer"
    puts order
    puts @order
  end

  def print_receipt
    p "this is running"
    p @order#.each do |dish|
    #   binding.irb
    #   puts "#{@selection.menu.dish.item} £#{@selection.menu.dish.price}"
  #   end
  end
end

menu = Menu.new
dish_one = Dish.new("Margharita", 10.00)
dish_two = Dish.new("Calzone", 12.00)
menu.add_dish(dish_one)
menu.add_dish(dish_two)
order = Order.new(menu)
order.take_order
p order#selection is blank outside of the program. Need to find out why
receipt = Receipt.new(order)
receipt.print_receipt
