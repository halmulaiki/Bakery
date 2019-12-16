require 'sinatra'
require 'httparty'

class Cookies
attr_accessor :description, :price, :name ,:img

   def initialize(name,img, description, price)
       @name = name
       @price = price
       @description = description
       @img = img

   end

end
class Cake
    def initialize(name,img, description, price)
        @name = name
        @price = price
        @description = description
        @img = img
 
    
    end
end
class Muffin
    def initialize(name,img, description, price)
        @name = name
        @price = price
        @description = description
        @img = img
 
    end
end
