require 'sinatra'
require 'httparty'
require 'curb'
require 'json'
require "./bakery.rb"
set :port, 3000

# @@url = "https://api.spoonacular.com/recipes/random?number=10&tags=vegetarian,dessert&apiKey=d949234bbafe45df8068c75f1821d320"
@@path = "https://api.edamam.com/search"
get '/' do
#{ENV['MY_API']}
  erb :index
end
get '/bread' do


 
@food ="bread"
  @titlePage = "bread"
  @number = 22
  @id = ENV['MY_APP']
  @key = ENV['MY_API_KEY']
  @arr = []
  req = Curl::Easy.perform(@@path + "?q=#{@food}&app_id=#{@id}&app_key=#{@key}&from=0&to=#{@number}&calories=591-722&health=alcohol-free")
  res = JSON.parse(req.body)
  i = 10
  while i < @number
    @data = res['hits'][i]["recipe"]
    @ingredientLines = []
    @data["ingredientLines"].each do |y|
      @ingredientLines << y
    end
    @bread = Bread.new(i,@data["label"], @data["image"],@ingredientLines, 2 )
    @arr << @bread
    i += 1
  end



   puts res
  erb :bread
end
get '/cookies' do

    @food ="cookie"
    @titlePage = "cookie"
    @number = 22
    @id = ENV['MY_APP']
    @key = ENV['MY_API_KEY']
    @arr = []
    req = Curl::Easy.perform(@@path + "?q=#{@food}&app_id=#{@id}&app_key=#{@key}&from=0&to=#{@number}&calories=591-722&health=alcohol-free")
    res = JSON.parse(req.body)
    i = 10
    while i < @number
      @data = res['hits'][i]["recipe"]
      @ingredientLines = []
      @data["ingredientLines"].each do |description|
        @ingredientLines << description
      end
      @cookie = Cookie.new(i,@data["label"], @data["image"],@ingredientLines, 2 )
      @arr << @cookie
      i += 1
    end
    puts res
    erb :cookies

end

get '/cake' do
  @food ="cake"
  @titlePage = "cake"
  @number = 22
  @id = ENV['MY_APP']
  @key = ENV['MY_API_KEY']
  @arr = []
  req = Curl::Easy.perform(@@path + "?q=#{@food}&app_id=#{@id}&app_key=#{@key}&from=0&to=#{@number}&calories=591-722&health=alcohol-free")
  res = JSON.parse(req.body)
  i = 10
  while i < @number
    @data = res['hits'][i]["recipe"]
    @ingredientLines = []
    @data["ingredientLines"].each do |description|
      @ingredientLines << description
    end
    @cake = Cake.new(i,@data["label"], @data["image"],@ingredientLines, 2 )
    @arr << @cake
    i += 1
  end
  puts res
  erb :cake
end

get '/muffin' do
  @food ="muffin"
  @titlePage = "muffin"
  @number = 22
  @id = ENV['MY_APP']
  @key = ENV['MY_API_KEY']
  @arr = []
  req = Curl::Easy.perform(@@path + "?q=#{@food}&app_id=#{@id}&app_key=#{@key}&from=0&to=#{@number}&calories=591-722&health=alcohol-free")
  res = JSON.parse(req.body)
  i = 10
  while i < @number
    @data = res['hits'][i]["recipe"]
    @ingredientLines = []
    @data["ingredientLines"].each do |description|
      @ingredientLines << description
    end

    @muffin = Muffin.new(i,@data["label"], @data["image"],@ingredientLines, 2)
    @arr << @muffin
    i += 1
  end
  puts res
  erb :muffin
end
