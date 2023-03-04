class CommentsController < ApplicationController


  def create
    p "I got to Comments.Create"
    # Get user input
    recipe_id = params.fetch("input_recipe_id")
    comment_message = params.fetch("input_message")

    comment = Comment.new
    # comment.author_id = session.fetch(:user_id)
    comment.recipe_id = recipe_id
    comment.message = comment_message
    comment.save

    # Lookup Relevant Recipe
    @recipe = Recipe.where({:id => recipe_id }).first

    redirect_to("/recipes/#{recipe_id}")
  end


end
