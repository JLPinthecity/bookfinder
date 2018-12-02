class Scraper 
  
  def self.scrape_books
   doc = Nokogiri::HTML(open("https://www.penguinrandomhouse.com/books/award-winners-fiction"))
    doc.css("div.book").each do |book| 
     title = book.css("div.title").text.strip
     author = book.css("div.contributor").text.strip
     path = book.css("div.img a").attribute("href").value
      url =  "https://www.penguinrandomhouse.com#{path}"
      book = Book.new(title, author, url) unless Book.all.include?(book)
    end
  end

  def self.scrape_book_details(book)
     new_book_landing = Nokogiri::HTML(open("#{book.url}"))
     book.image = new_book_landing.css("div.cover-wrapper img").attr('src').value
     book.author_details = new_book_landing.css("div#mobile-author-spotlights .clearfix").text.split(". ")[0] << "."
     book.category_of_fiction = new_book_landing.css("div#product-top-category a").text.split[0] + " fiction"
     book.description = new_book_landing.css("div#mobile-about-the-book p").text.split("\n\t")[0]
     book
  end

end


