# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  comment_id :integer
#  recipe_id  :integer
#
class Comment < ApplicationRecord
  # validates(:commenter, {:presence => true })
  # validates(:recipe, {:presence => true })

  def commenter
    return User.where({ :id => self.author_id }).at(0)
  end

  def recipe
    return Recipe.where({ :id => self.recipe_id }).at(0)
  end
end
