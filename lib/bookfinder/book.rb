require 'pry'

class Bookfinder::Book
@@books = ["1", "2", "3"]



def add_book
  @@books << self
end

def self.all 
  @@books
end

end


binding.pry