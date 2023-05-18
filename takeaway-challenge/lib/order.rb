require_relative 'dish'
require_relative 'menu'

class Order
  attr_reader :order

  def initialize(menu)
    @menu = menu
  end

  def print_order
    @order.each { puts menu.dishes }
  end

  def take_order
    @order = []
    loop do
      binding.irb
      puts "Select the number of the dish you'd like to order and press return. When you're done, press return again"
      order_no = gets.chomp
      break if order_no.empty?

      index = order_no.to_i - 1
      if index >= 0 && index < menu.dishes.count
        @order << menu.dishes[index]
      else
        puts "Invalid dish number. Please try again."
      end
      puts "You have ordered:"
      @order.each do |dish|
        puts dish.item
      end
    end
  end
end

menu = Menu.new
dish_one = Dish.new("Margharita", 10.00)
dish_two = Dish.new("Calzone", 12.00)
menu.add_dish(dish_one)
menu.add_dish(dish_two)
order = Order.new(menu)
order.take_order
# order.menu 
# order.menu.dishes 
# order.menu.dishes[0]
# order.menu.dishes[0].item