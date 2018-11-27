require 'pry'
class Bookfinder::CLI
  
def call
  puts "Welcome to the Top 20 Books of 2018 Bookfinder Tool!"
  list_books
end

def list_books
  puts "Would you like to see the list of the most popular books of the year? Enter y or n:"
  input = gets.strip.downcase
  input == "y" ? menu : goodbye
end

def menu
  puts "list of books go here"
  puts "Enter the number of the book you’d like to learn more about or enter exit to leave the program."
  input = gets.chomp.to_i
   while input != "exit" || input != "e"
     if !valid?(input)
     puts "display selected book menu"
     else
     puts "Try a valid input."
     end
   end
end

def valid?(n)
  binding.pry
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