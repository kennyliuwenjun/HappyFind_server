class Service < ApplicationRecord
  belongs_to :skill_category
  belongs_to :supplier
  has_many :orders
end
