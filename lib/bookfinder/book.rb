require 'pry'

class Bookfinder::Book
  attr_accessor :title, :author, :genre, :description, :url
  
@@books = ["1", "2", "3"]



def add_book
  @@books << self
end

def self.all 
  @@books
end

end


