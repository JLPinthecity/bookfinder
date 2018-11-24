class Bookfinder::Scraper 

def open_page
  doc = Nokogiri::HTML(open("https://www.goodreads.com/book/popular_by_date/2018"))
end

def get_books

end

def make_books
  
end 
#create new books and assign them attributes


def self.scrape_books
  doc = Nokogiri::HTML(open("https://www.goodreads.com/book/popular_by_date/2018"))
  binding.pry 
end






end


#book_1.name = title of book
#book_1.author = author name
#book_1.genre = genre
#book_1.description = description
#book_1.url = url

