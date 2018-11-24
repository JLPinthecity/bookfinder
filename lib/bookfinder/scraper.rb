require 'pry'
class Bookfinder::Scraper 

def self.scrape_books
   doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/books/award-winners-fiction"))
   books = doc.css("div.book")
   
   collection_of_books = {}
  
   
   books.each do |book| 
    title = book.css("div.title").text.strip
    author = book.css("div.contributor").text.strip
    image = book.css("div a img").attribute("src").value
    
    binding.pry
    end
end

end

