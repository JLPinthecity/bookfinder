class Book
  attr_accessor :title, :author, :url, :category_of_fiction, :description, :image, :author_details

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

end