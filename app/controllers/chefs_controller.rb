class ChefsController < ApplicationController
  def index
    matching_chefs = Chef.all
    @list_of_chefs = matching_chefs.order({ :created_at => :desc })

    render({ :template => "chef_templates/index.html.erb" })
  end
end
