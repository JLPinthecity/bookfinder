class Bookfinder::CLI
  
def call
  list_books
  menu

end

def list_books
  puts "Welcome to the Bookfinder CLI app!"
  puts "list of books"
end

def menu
  puts "menu options"
  puts "“Enter the number of the book you’d like to learn more about. Enter exit to leave the program."
  input = gets.strip
  case input
   
end

end