#Your rake task goes here

require './messaging.rb'
require './scraping.rb'
require 'open-uri'

task :messaging do
	scraper = Scrape.new

	message=Messaging.new
	message.send_text(+13477580450)
end