class Bookfinder::Book
  attr_accessor :title, :author, :url

@@all = []
  
def initialize(title, author, url)
  @title = title
  @author = author
  @url = url
  @@all << self
end

def self.all
  @@all
end

def self.display_books
  @@all.each.with_index(1) do |book, index|
    puts "#{index}: #{book.title} - #{book.author}"
  end
end

end