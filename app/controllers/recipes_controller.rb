class RecipesController < ApplicationController
  
  def index
      if(params[:search]!=nil)
          @search_term=params[:search]
      else
          @search_term='chocolate'
      end
      @recipes=Recipe.for @search_term
          
      
  end


end
