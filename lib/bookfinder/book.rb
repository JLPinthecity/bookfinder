require 'pry'

class Bookfinder::Book
  attr_accessor :title, :author, :url

@@all = []
  
def initialize(title, author, url)
  @title = title
  @author = author
  @url = url
  @@all = []
  end
end

def self.all
  @@all
end

end


