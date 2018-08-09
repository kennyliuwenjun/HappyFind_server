# == Schema Information
#
# Table name: services
#
#  id                :bigint(8)        not null, primary key
#  supplier_id       :integer
#  skill_category_id :integer
#  price             :decimal(8, 2)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Service < ApplicationRecord
  belongs_to :skill_category
  belongs_to :supplier
  has_many :orders

end
