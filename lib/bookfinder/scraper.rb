require "pry"
require 'nokogiri'
require 'open-uri'

class Bookfinder::Scraper 


def scrape_books
  doc = Nokogiri::HTML(open("https://www.goodreads.com/book/popular_by_date/2018"))
end


end