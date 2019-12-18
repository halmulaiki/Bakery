require 'sinatra'
require 'httparty'

class Cookie
attr_accessor :ingredientLines, :price, :name ,:img

   def initialize(id, name,img, ingredientLines, price)
       @name = name
       @price = 29.99
       @ingredientLines = ingredientLines
       @img = img

   end

end
class Cake
attr_accessor :ingredientLines, :price, :name ,:img

    def initialize(id, name,img, ingredientLines, price)
        @name = name
        @price = 59.99
        @ingredientLines = ingredientLines
        @img = img
    
    end
end
class Muffin
 attr_accessor :ingredientLines, :price, :name ,:img

    def initialize(id, name,img, ingredientLines, price)
        @name = name
        @price = 41.99
        @ingredientLines = ingredientLines
        @img = img
 
    end
end
class Bread
    attr_accessor :ingredientLines, :price, :name ,:img
   
       def initialize(id, name,img, ingredientLines, price)
           @name = name
           @price = 20.99
           @ingredientLines = ingredientLines
           @img = img
    
       end
   end
# @cake = Cake.new("Butter Cake",https://assets.epicurious.com/photos/575991f3973781fc02c2a827/6:4/w_1600%2Cc_limit/EP_06062016_Vanilla-Buttermilk-Wedding-Cake-with-Raspberries-and-Orange-Cream-Cheese-Frosting.jpg, 'Any recipe for cake that begins "cream butter and sugar" is a butter cake. After the creaming, you add eggs to aerate the batter a bit, flour (and sometimes another liquid, like milk) to give it structure and texture, and baking powder or baking soda to ensure that it rises in the oven. Different types of cake batter within the butter cake family include chocolate, white, yellow and marble; for white and yellow cakes coloring typically depends on whether they have whole eggs, or extra egg yolks in them (yellow cake) or egg whites only (white cake).', "$30.00")