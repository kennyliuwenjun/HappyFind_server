# == Schema Information
#
# Table name: skill_categories
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SkillCategory < ApplicationRecord
  has_many :services
end
