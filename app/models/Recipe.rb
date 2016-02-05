require 'httparty'

class Recipe
  include HTTParty
  key_value = ENV['FOOD2FORK_KEY']
  key_value = 'd204f7f985562e18ca651903a8aafa0f'
  
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
    
    base_uri "http://#{hostport}/api/search"
  #  base_uri "http://food2fork.com/api/search"
    default_params key: key_value
  format :json

  def self.for (keyword)
    get("", query: {q: keyword})["recipes"]
  end
end