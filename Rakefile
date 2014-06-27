#Your rake task goes here

require './lib/messaging.rb'
require './lib/scraping.rb'
require 'open-uri'
require 'nokogiri'

task :messaging do
	scraper = Scraper.new

	message=Messaging.new
	message.send_text(+13477580450)
end