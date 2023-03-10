# == Schema Information
#
# Table name: recipes
#
#  id            :integer          not null, primary key
#  image         :string
#  name          :string
#  rating        :integer
#  recipe_steps  :text
#  time_to_make  :time
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  chef_id       :integer
#  ingredient_id :integer
#
class Recipe < ApplicationRecord
  def comments
    return Comment.where({ :recipe_id => self.id })
  end
  
  def poster
    return User.where({ :id => self.owner_id }).at(0)
  end
end
