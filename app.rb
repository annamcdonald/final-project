require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/messaging'
require './lib/scraping'
require 'pry'


get '/' do
	@game = Scraper.new('http://www.fifa.com/worldcup/matches/index.html')
  #instance class from scraping.rb here
  #index.html.erb won't have access to your objects without it.
  erb :index #this tells your program to use the html associated with the index.html.erb file in your browser
end 