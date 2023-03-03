class RecipesController < ApplicationController
  def index
    matching_recipes = Recipe.all
    @list_of_recipes = matching_recipes.order({ :created_at => :desc })

    render({ :template => "recipe_templates/index.html.erb" })
  end

  def recent

    render({ :template => "recipe_templates/recent.html.erb" })
  end

  def best

    render({ :template => "recipe_templates/best.html.erb" })
  end
end
