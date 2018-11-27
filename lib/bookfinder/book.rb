class Bookfinder::Book
  attr_accessor :title, :author, :image, :url

@@all = []
  
def initialize(title, author, image, url)
  @title = title
  @author = author
  @image = image
  @url = url
  @@all = []
end

def self.all
  @@all
end

end


