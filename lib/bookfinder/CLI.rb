class Bookfinder::CLI
  
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
  Bookfinder::Scraper.scrape_books
  Bookfinder::Book.display_books
  puts "Enter the number of the book you’d like to learn more about or enter exit to leave the program."
    input = gets.strip
    if valid?(input) && input != "exit"
      input = input.to_i - 1
      
      book = Bookfinder::Book.all[input]
      Bookfinder::Scraper.scrape_individual_book(book)
      puts “Category: #{book.category_of_fiction}"
      puts “Description: #{book.description}"
      puts “Image: #{book.image}""
    else 
      goodbye
    end
end

def display_book_details(book)

def valid?(n)
  if n > 0 && n < 20
  true
  else
  false 
  end
end

def goodbye
  puts "Thank you and goodbye!"
end

end