class CLI
  
def call
  puts "Welcome to the Award-Winning Fiction Bookfinder Tool!"
  list_books
end

def list_books
  puts "Would you like to view a list of award-winning novels? Enter y or n:"
  input = gets.strip.downcase
  input == "y" ? menu : goodbye
end

def menu
  Scraper.scrape_books
  Book.all.each.with_index(1) do |book, index|
    puts "#{index}: #{book.title} - #{book.author}"
  end
  
  puts "Enter the number of the book you’d like to learn more about or enter exit to leave the program:"
  
  input = gets.strip.to_i - 1
  
    if input.between?(0, 19) 
      index = input
     
      book = Book.all[index]
      Scraper.scrape_book_details(book)
      puts "Category: #{book.category_of_fiction}"
      puts "Description: #{book.description}"
      puts "Author details: #{book.author_details}"
      puts "Cover image: #{book.image}"
      
    else 
      goodbye
    end
end

def goodbye
  puts "Thank you and goodbye!"
end

end