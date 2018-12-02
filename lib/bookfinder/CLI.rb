class CLI
  
  def call
    puts "Welcome to the Award-Winning Fiction Bookfinder Tool!"
    scrape_books
    list_books
  end

  def list_books
    puts "Would you like to view the list of award-winning novels? Enter y or n:"
    input = gets.strip.downcase
    input == "y" ? menu : goodbye
    end

  def scrape_books
    Scraper.scrape_books
  end

  def display_books
    Book.all.each.with_index(1) do |book, index|
      puts "#{index}: #{book.title} - #{book.author}"
    end
  end

  def menu
    display_books
    puts "                                     "
    puts "Enter the number of the book you’d like to learn more about or enter exit to leave the program:"
    puts "                                     "
    
    input = gets.strip.to_i - 1
    number_of_books = Book.all.size
    
    if input.between?(0, number_of_books - 1) 
      index = input
     
      book = Book.all[index]
      Scraper.scrape_book_details(book)
      puts "                                     "
      puts "||Category|| #{book.category_of_fiction}"
      puts "                                     "
      puts "||Description|| #{book.description}"
      puts "                                     "
      puts "||Author details|| #{book.author_details}"
      puts "                                     "
      puts "||Cover image|| #{book.image}"
      puts "                                     "
      list_books
      
    else 
      goodbye
    end
  end

  def goodbye
    puts "Thank you and goodbye!"
  end

end