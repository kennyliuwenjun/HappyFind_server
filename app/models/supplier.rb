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
#  latitude        :float
#  longitude       :float
#  address         :string
#  isSupplier      :boolean
#  phone           :text
#

class Supplier < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  after_initialize :init

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :services
  def init
   self.isSupplier  ||= false
 end
end
