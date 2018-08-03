# == Schema Information
#
# Table name: suppliers
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  password_digest :text
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Supplier < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :email, uniqueness: true

  has_many :services
end
