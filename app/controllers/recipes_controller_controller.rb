class RecipesControllerController < ApplicationController
  def index
    @query = params[:search] || 'chocolate'
    @recipes = Recipe.for @query
  end
end
