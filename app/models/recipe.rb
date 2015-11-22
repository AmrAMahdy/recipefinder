class Recipe
  include HTTParty
  
  default_params key: "40725c83ff55a71d2546e9b12749384e" 
  format :json
  
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{ hostport }/api"

  def self.for term
    get("/search", query: {q: term})["recipes"]
  end
end
