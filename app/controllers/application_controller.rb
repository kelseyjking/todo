class ApplicationController < ActionController::Base
  def homepage
    all_recipes = Recipe.all
    sorted_recipes = all_recipes.order({ :created_at => :desc })
    @top_recipes = sorted_recipes[0,5]
    render({ :template => "misc_templates/home"})
  end
end
