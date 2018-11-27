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
  books = Bookfinder::Books.all 
  books.each.with_index(1) do |book, index|
    puts "#{index}: #{book.title} - #{book.author}"
  end
  puts "Enter the number of the book you’d like to learn more about or enter exit to leave the program."
  input = gets.strip
    while input.to_i.between?(1, 20) && input != "exit"
      index = input.to_i - 1
      book = Bookfinder::Book.all[index]
      Bookfinder::Scraper.scrape_individual_book(book)
      puts "#{book.category_of_fiction}"
      puts "#{book.description}"
      puts "#{book.image}"
    else 
      goodbye
    end
end



def goodbye
  puts "Thank you and goodbye!"
end

end