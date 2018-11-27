class Bookfinder::Scraper 
  
def self.scrape_books
  doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/books/award-winners-fiction"))
  doc.css("div.book").each do |book| 
    title = book.css("div.title").text.strip
    author = book.css("div.contributor").text.strip
    path = book.css("div.img a").attribute("href").value
    url =  "https://www.penguinrandomhouse.com#{path}"
    Bookfinder::Book.new(title, author, image, url)
  end
end

def self.scrape_individual_book(book)
  new_book_landing = Nokogiri::HTML(open("#{book.url}"))
    image = new_book_landing.css("div a img").attribute("src").value
    category_of_fiction = new_book_landing.css("div#product-top-category a").text.split[0] + " fiction"
    description = new_book_landing.css("div#mobile-about-the-book p").text.split("\n\t")[0]
end


end


