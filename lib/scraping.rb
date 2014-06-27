require 'open-uri'
require 'date'


class Scraper

	def initialize(url)
		@html = open(url)  #'http://www.fifa.com/worldcup/matches/index.html'
		@fifa = Nokogiri::HTML(@html)
	end

	def get_game_status
		@fifa.css(".match-list-date").each do |date|
			game_day = date.css("h3 span").text
			#!/usr/bin/ruby -w
			current_day = Time.now - 60*1440

			if game_day	== current_day.strftime("%A %d %B")
				"We're comparing #{game_day} to #{current_day.strftime("%A %d %B")}"
				date.css(".col-xs-12").each do |games|
					home = games.css(".home .t-nText").text
					away = games.css(".away .t-nText").text 
					scores = games.css(".s-scoreText").text.split("-")
					@messages = []
					if scores[1] == nil
						 @messages << "The game between #{home} and #{away} starts at #{scores[0]}"
					else
						@messages << "#{home} scored #{scores[0]} point(s) and #{away} scored #{scores[1]} point(s). The game is over."	
					end
					if games.css(".s-status").text==nil
						nil
					else		
						@messages << "#{home} scored #{scores[0]} and #{away} scored #{scores[1]} points. The game is over."	
					end
				end
			end
		end
		@messages
	end
	#time2 = Time.now
	#puts "Current Time : " + time2.inspect



# binding.pry
end #ending class#Your object-oriented scraper goes here