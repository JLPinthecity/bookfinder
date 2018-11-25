require 'pry'

class Bookfinder::Book
  attr_accessor :title, :author, :genre, :description, :url
  
def initialize(attributes)
  attributes.each do |key, value|
    self.send(("#{key}="), value)
  end
end



end


