class RecipesControllerController < ApplicationController
  def index
    @query = 'chicken'
    @recipes = Recipe.for @query
  end
end
