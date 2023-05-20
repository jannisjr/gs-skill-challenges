require_relative 'dish'
require_relative 'menu'

class Order
  attr_accessor :selection, :name, :phone_no, :order_no

  def initialize(menu)
    @menu = menu
    @selection = []
    @phone_no = ""
    @name = ""
    @order_no = ""
  end

  def take_order
    loop do
      puts "Select the number of the dish you'd like to order and press return. When you're done, press return again"
      @order_no = gets.chomp
      break if order_no.empty?

      index = order_no.to_i - 1
      if index >= 0 && index < @menu.dishes.count
        @selection << @menu.dishes[index]
      else
        puts "Invalid dish number. Please try again."
      end

      puts "You have ordered:"
      @selection.each do |dish|
        puts dish.item
      end
    end
  end

  def order_number_generator
    @order_no = rand(1...999)
  end

  def send_text
    puts "Would you like a text confirmation? yes/no"
    answer = gets.chomp
    order_number_generator
    puts "What is your name?"
    @name = gets.chomp
    puts "please enter your mobile number"
    @phone_no = gets.chomp
    @phone_no = "+44#{phone_no}"
  end
end



# menu = Menu.new
# dish_one = Dish.new("Margharita", 10.00)
# dish_two = Dish.new("Calzone", 12.00)
# menu.add_dish(dish_one)
# menu.add_dish(dish_two)
# order = Order.new(menu)
# order.take_order
# order.menu 
# order.menu.dishes 
# order.menu.dishes[0]
# order.menu.dishes[0].item