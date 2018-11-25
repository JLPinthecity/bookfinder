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
    path = book.css("div.img a").attribute("href").value
    url = print "https://www.penguinrandomhouse.com#{path}"
    
    
    new_book_landing = Nokogiri::HTML(open("https://www.penguinrandomhouse.com#{path}"
  ))
    category_of_fiction = new_book_landing.css("div#product-top-category a").text.split[0] + " fiction"
    description = new_book_landing.css("div#mobile-about-the-book p").text.split("\n\t")[0]
    published_date = 
    binding.pry
    end
end

#def self.scrape_individual_book
#  page = Nokogiri::HTML(open("https://www.penguinrandomhouse.com#{path}"))
 # binding_pry
#end

end


#pry(Bookfinder::Scraper)> new_book_landing.css("div.product-format-tblt p span").text