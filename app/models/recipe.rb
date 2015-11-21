# require('httparty')

class Recipe
  include HTTParty
  
  base_uri "http://food2fork.com/api"
  default_params key: "40725c83ff55a71d2546e9b12749384e" 
  format :json
  
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  
  def self.for term
    get("/search", query: {q: term})["recipes"]
  end
end

# p Recipe.for "chicken"
