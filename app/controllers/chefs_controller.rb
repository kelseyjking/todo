class ChefsController < ApplicationController
  def index
    matching_chefs = Chef.all
    @list_of_chefs = matching_chefs.order({ :created_at => :asc })

    render({ :template => "chef_templates/index.html.erb" })
  end

  def create
    # Get user input
    chef_name = params.fetch("chef_name")
    chef_image = params.fetch("chef_image")

    chef = Chef.new
    chef.chef_name = chef_name
    chef.image = chef_image
    chef.save

    redirect_to("/chefs")
  end
end
