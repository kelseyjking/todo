class RatingController < ApplicationController

    def create
      # Get user input
      rater_id = params.fetch("input_rater_id")
      recipe_id = params.fetch("input_recipe_id")
      rating_value = params.fetch("rating_number")
  
      rating = Rating.new
      # comment.author_id = session.fetch(:user_id)
      rating.recipe_id = recipe_id
      rating.rating_id = rating_value
      rating.rater_id = rater_id
      rating.save
  
      # Lookup Relevant Recipe
      @recipe = Recipe.where({:id => recipe_id }).first
  
      redirect_to("/recipes/#{recipe_id}")
      
    end

end
  
