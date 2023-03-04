# == Schema Information
#
# Table name: writes
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  c_id       :integer
#
class Write < ApplicationRecord
end
