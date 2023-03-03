# == Schema Information
#
# Table name: chefs
#
#  id              :integer          not null, primary key
#  bio             :text
#  chef_name       :string
#  image           :string
#  related_recipes :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Chef < ApplicationRecord
end
