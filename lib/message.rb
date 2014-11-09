require 'rubygems'
require 'twilio-ruby'

class Message

	def initialize
		account_sid = "AC7d8414ae741d60209b1ff59d3e7ddcc7" 
		auth_token = "2b98a4c886d8779404f99f5c389cedec"
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

	def send_text(phone_no)
		message = @client.account.messages.create(
	  from: '442393162452',
	  to: phone_no,
	  body: "Thank you! Your order was placed and will be delivered before #{Time.now.hour + 1}:#{Time.now.min} ")
	  message.sid
	end

end


