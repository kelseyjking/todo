class RecipesController < ApplicationController
  def index
    all_recipes = Recipe.all
    @sorted_recipes = all_recipes.order({ :created_at => :desc })

    render({ :template => "recipe_templates/index.html.erb" })
  end

  def show
    recipe_id = params.fetch("the_recipe_id")
    @recipe = Recipe.where({:id => recipe_id }).first
    render({ :template => "recipe_templates/show.html.erb" })
  end
end
