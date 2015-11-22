class Recipe
  include HTTParty
    
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{ hostport }/api"
  
  default_params key: key_value || "40725c83ff55a71d2546e9b12749384e" 
  format :json


  def self.for term
    get("/search", query: {q: term})["recipes"]
  end
end
