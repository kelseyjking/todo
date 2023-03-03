# == Schema Information
#
# Table name: ingredients
#
#  id              :integer          not null, primary key
#  expiry_date     :date
#  image           :string
#  ingredient      :string
#  inventory       :string
#  related_recipes :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Ingredient < ApplicationRecord
end
