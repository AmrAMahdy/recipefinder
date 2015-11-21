class RecipesControllerController < ApplicationController
  def index
    @query = params[:search] || 'chicken'
    @recipes = Recipe.for @query
  end
end
