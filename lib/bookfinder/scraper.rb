class Bookfinder::Scraper 




def make_books
  
end 
#create new books and assign them attributes


def self.scrape_books
   doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/books/award-winners-fiction"))
   books = doc.css("div.book")
   books.each do |book|
    title = book.css("div.title").text.strip
    author = book.css("div.contributor").text.strip
    
    binding.pry
  end
end
  

end

#maybe create hashes of books?
#then assign attributes to symbols
   
   
   
   
   
 
  


#book_1.name = title of book
#book_1.author = author name
#book_1.genre = genre
#book_1.description = description
#book_1.url = url

