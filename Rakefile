#Your rake task goes here

require './lib/messaging.rb'
require './lib/scraping.rb'
require 'open-uri'
require 'nokogiri'

task :messaging do
	scraper = Scraper.new('http://www.fifa.com/worldcup/matches/index.html')

	message=Messaging.new
	message.send_text
end