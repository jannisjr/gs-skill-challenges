require 'twilio-ruby'

class Confirmation
  def initialize
    @twilio_sid = ENV["TWILIO_SID"]
    @twilio_token = ENV["TWILIO_AUTH_TOKEN"]
    @twilio_number = ENV["TWILIO_PHONE_NUMBER"]
  end

  require "twilio-ruby"


def send(order, phone_no)
  @client = Twilio::REST::Client.new @tiwlio_sid, @twilio_token
  message = @client.messages.create(
    body: "Order #{order.order_id} is on it's way",
    to: phone_no,  # Text this number
    from: @twilio_number, # From a valid Twilio number
  )

  return message.sid
end
