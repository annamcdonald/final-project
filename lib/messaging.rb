#Your code to send a message goes herequire 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
require 'nokogiri'
require_relative './scraping.rb'


class Messaging

	def send_text
# put your own credentials here
		account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
		auth_token = '2008ea097713e401a16c54029058da82'

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token

		scraper = Scraper.new('http://www.fifa.com/worldcup/matches/index.html')
		@game_status = scraper.get_game_status

		@client.account.messages.create(
		  :from => '+18152642023',
		  :to => '+13477580450',
		  :body => @game_status
		)
	end
end

message=Messaging.new
message.send_text

