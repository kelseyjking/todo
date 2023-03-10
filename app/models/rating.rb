# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  rater_id   :integer
#  rating_id  :integer
#  recipe_id  :integer
#
class Rating < ApplicationRecord

  def rater
    return User.where({ :id => self.rater_id }).at(0)
  end

  def recipe
    return Recipe.where({ :id => self.recipe_id }).at(0)
  end
end
