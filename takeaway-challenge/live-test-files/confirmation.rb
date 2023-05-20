require 'twilio-ruby'
require_relative 'menu'
require_relative'order'
require_relative 'receipt'

class Confirmation
  def initialize
    @twilio_sid = ENV["TWILIO_SID"]
    @twilio_token = ENV["TWILIO_AUTH_TOKEN"]
    @twilio_number = ENV["TWILIO_PHONE_NUMBER"]
  end
  
  def send(order)
    #fail "No phone number provided" if order.phone_no.empty

    @client = Twilio::REST::Client.new @twilio_sid, @twilio_token
    message = @client.messages.create(
      body: "Hi #{order.name}, order #{order.order_no} is on its way!",
      to: order.phone_no,  # Text this number
      from: +12543555895, # From a valid Twilio number
    )
    return message.sid
  end
end

menu = Menu.new
dish_one = Dish.new("Margharita", 10.00)
dish_two = Dish.new("Calzone", 12.00)
menu.add_dish(dish_one)
menu.add_dish(dish_two)
menu.print_menu
order = Order.new(menu)
order.take_order
receipt = Receipt.new(order)
receipt.print_receipt
order.send_text
confirmation = Confirmation.new
confirmation.send(order)