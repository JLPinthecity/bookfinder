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
  puts Bookfinder::Book.all
   input = nil
   while input != "exit" || "e"
     puts "Enter the number of the book you’d like to learn more about or enter exit to leave the program."
     input = gets.chomp.to_i
     case input
     when Integer
       puts "yay, that works"
     when !valid?
     else
       puts "Try a valid input."
     end
   end
end

def valid? 
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